#include "exprLexer.h"

namespace expression_parser {

bool isAllowed(const char ch)
{
    for(int i = 0; i < ALLOWED_CHARS_COUNT; i++)
    {
        if(ch == allowedChars[i]) return true;
    }
    return false;
}

bool isDigit(const char ch)
{
    if(ch >= '0' && ch <= '9') return true;
    return false;
}

bool isSeperator(const char ch)
{
    if(ch == '.' || ch == ',') return true;
    return false;
}

CExprLexer::CExprLexer()
{
}

bool CExprLexer::parseLexeme(std::string::const_iterator &it, std::string::const_iterator end, PExprLexeme &lexeme)
{
    char ch = *it;
    // parse one lexeme and return
    if(!isAllowed(ch))
    {
        // report error
        std::string err = "Некорректный ввод! Числовой литерал содержит не разрешенный символ: ";
        err.append({ch});
        err.append(" . Позиция символа: ");
        err.append(std::to_string(position));
        errors.push_back(err);
        return false;
    }
    if(ch == '+')
    {
        lexeme = PExprLexeme(new SExprLexeme(SExprLexeme::ADDITION, position));
        it++; position++;
    }
    else if(ch == '-')
    {
        lexeme = PExprLexeme(new SExprLexeme(SExprLexeme::SUBTRACTION, position));
        it++; position++;
    }
    else if(ch == '*')
    {
        lexeme = PExprLexeme(new SExprLexeme(SExprLexeme::MULTIPLICATION, position));
        it++; position++;
    }
    else if(ch == '/')
    {
        lexeme = PExprLexeme(new SExprLexeme(SExprLexeme::DIVISION, position));
        it++; position++;
    }
    else if(ch == '(')
    {
        lexeme = PExprLexeme(new SExprLexeme(SExprLexeme::OPEN_BRACKET, position));
        it++; position++;
    }
    else if(ch == ')')
    {
        lexeme = PExprLexeme(new SExprLexeme(SExprLexeme::CLOSE_BRACKET, position));
        it++; position++;
    }
    else if(isDigit(ch))
    {
        std::string val;
        bool containsSeparator = false;
        int numberPosition = position;
        // parse number literal
        while(isDigit(ch) || isSeperator(ch))
        {
            if(isSeperator(ch))
            {
                if(containsSeparator)
                {
                    std::string err = "Ошибка! Числовой литерал содержит два разделителя дробной части: ";
                    err.append(val);
                    err.append(" . Позиция разделителя: ");
                    err.append(std::to_string(position));
                    errors.push_back(err);
                    return false;
                }
                containsSeparator = true;
            }
            val.append({ch});
            it++; position++;
            if(it == end) break;
            ch = *it;
        }
        if(isSeperator(val.back()))
        {
            std::string err = "Ошибка! Числовой литерал завершается разделителем дробной части: ";
            err.append(val);
            err.append(" . Позиция литерала: ");
            err.append(std::to_string(numberPosition));
            errors.push_back(err);
            return false;
        }
        // create lexeme
        lexeme = PExprLexeme(new SExprLexeme(SExprLexeme::NUMBER, val, numberPosition));
    }
    else return false;

    return true;
}

bool CExprLexer::parse(const std::string &expr, TLexemeList &lexemeList)
{
    position = 1;
    std::string::const_iterator it = expr.begin();
    while(it != expr.end())
    {
        // preskip spaces
        char ch = *it;
        while(ch == ' ')
        {
            it++; position++;
            if(it == expr.end()) break;
            ch = *it;
        }
        if(it == expr.end()) break;

        PExprLexeme lexeme;
        // call lexeme parsing function
        if(!parseLexeme(it, expr.end(), lexeme)) return false;
        lexemeList.push_back(lexeme);
    }
    if(it != expr.end())
    {
        errors.push_back("Исходная строка не разобрана до конца!");
        return false;
    }
    if(lexemeList.size() == 0)
    {
        errors.push_back("Исходная строка не содержит лексем!");
        return false;
    }
    return true;
}

void CExprLexer::outputErrors(std::ostream &output)
{
    for(auto &err : errors)
    {
        output << err << std::endl;
    }
    errors.clear();
}

}
