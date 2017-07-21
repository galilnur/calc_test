#include <algorithm>

#include "exprParser.h"

namespace expression_parser {
CExprParser::CExprParser()
{
}

void CExprParser::appendPosition(std::string &err, TLexemeList::const_iterator &it, TLexemeList::const_iterator end)
{
    if(it == end) return;
    const PExprLexeme &lex = *it;
    err.append(" Позиция: ");
    err.append(std::to_string(lex->position));
}

bool CExprParser::skipOpeningBracket(TLexemeList::const_iterator &it, TLexemeList::const_iterator end)
{
    if(it == end) return false;

    const PExprLexeme &lex = *it;
    if(lex->isOpeningBracket())
    {
        it++;
        return true;
    }
    return false;
}

bool CExprParser::skipClosingBracket(TLexemeList::const_iterator &it, TLexemeList::const_iterator end)
{
    if(it == end) return false;

    const PExprLexeme &lex = *it;
    if(lex->isClosingBracket())
    {
        it++;
        return true;
    }
    return false;
}

bool CExprParser::parseSimpleExpression(TLexemeList::const_iterator &it, TLexemeList::const_iterator end, PExprTree &result)
{
    if(it == end) return false;
    // parse unary minus
    bool had_minus = false;
    PExprLexeme lex = *it;
    if(lex->isSubtraction())
    {
        had_minus = true;
        it++;
    }
    PExprTree term;
    TLexemeList::const_iterator it2 = it;
    if(!parseTerm(it2, end, term))
    {
        std::string err = "Ошибка! Ожидалось слагаемое.";
        appendPosition(err, it, end);
        errors.push_back(err);
        return false;
    }
    it = it2;
    if(had_minus)
        result = PExprTree(new CExprTree(OperationType::SUBTRACTION, PExprTree(), term));
    else
        result = term;

    if(it == end) return true;

    lex = *it;
    while(lex->isAddition() || lex->isSubtraction())
    {
        it++;
        TLexemeList::const_iterator it2 = it;
        // try to parse other term
        if(!parseTerm(it2, end, term))
        {
            std::string err = "Ошибка! Ожидалось слагаемое.";
            appendPosition(err, it, end);
            errors.push_back(err);
            return false;
        }
        // combine with this term into new subtree
        OperationType op = (lex->isAddition())? OperationType::ADDITION : OperationType::SUBTRACTION;
        result = PExprTree(new CExprTree(op, result, term));
        it = it2;
        if(it == end) break;
        lex = *it;
    }

    return true;
}

bool CExprParser::parseTerm(TLexemeList::const_iterator &it, TLexemeList::const_iterator end, PExprTree &result)
{
    if(it == end) return false;
    TLexemeList::const_iterator it2 = it;
    if(!parseFactor(it2, end, result))
    {
        std::string err = "Ошибка! Ожидался множитель.";
        appendPosition(err, it, end);
        errors.push_back(err);
        return false;
    }
    it = it2;
    if(it == end) return true;

    PExprLexeme lex = *it;
    while(lex->isMultiplication() || lex->isDivision())
    {
        it++;
        TLexemeList::const_iterator it2 = it;
        // try to parse other term
        PExprTree factor;
        if(!parseFactor(it2, end, factor))
        {
            std::string err = "Ошибка! Ожидался множитель.";
            appendPosition(err, it, end);
            errors.push_back(err);
            return false;
        }
        // combine with this term into new subtree
        OperationType op = (lex->isMultiplication())? OperationType::MULTIPLICATION : OperationType::DIVISION;
        result = PExprTree(new CExprTree(op, result, factor));
        it = it2;
        if(it == end) break;
        lex = *it;
    }

    return true;
}

double toDouble(std::string s){
    std::replace(s.begin(), s.end(), ',', '.');
    return std::atof(s.c_str());
}

bool CExprParser::parseFactor(TLexemeList::const_iterator &it, TLexemeList::const_iterator end, PExprTree &result)
{
    if(it == end) return false;
    PExprLexeme lex = *it;

    if(lex->isOperation() || lex->isClosingBracket()) return false;

    if(lex->isNumber())
    {
        double val = toDouble(lex->value);
        result = PExprTree(new CExprTree(val));
        it++;
        return true;
    }
    TLexemeList::const_iterator it2 = it;
    if(!parse(it2, end, result))
    {
        std::string err = "Ошибка! Ожидалось выражение.";
        appendPosition(err, it, end);
        errors.push_back(err);
        return false;
    }
    it = it2;
    return true;
}

bool CExprParser::parse(TLexemeList::const_iterator &it, TLexemeList::const_iterator end, PExprTree &result)
{
    if(it == end) return false;

    TLexemeList::const_iterator it2 = it;

    if(skipOpeningBracket(it, end))
    {
        it2 = it;
        if(!parse(it2, end, result))
        {
            std::string err = "Ошибка! Ожидалось выражение.";
            appendPosition(err, it, end);
            errors.push_back(err);
            return false;
        }
        it = it2;

        if(!skipClosingBracket(it2, end))
        {
            std::string err = "Ошибка! Ожидалась закрывающая скобка.";
            appendPosition(err, it, end);
            errors.push_back(err);
            return false;
        }
        it = it2;
        return true;
    }
    if(!parseSimpleExpression(it2, end, result))
    {
        std::string err = "Ошибка! Ожидалось простое выражение.";
        appendPosition(err, it, end);
        errors.push_back(err);
        return false;
    }

    it = it2;

    return true;
}

void CExprParser::outputErrors(std::ostream &output)
{
    for(auto &err : errors)
    {
        output << err << std::endl;
    }
    errors.clear();
}

}

