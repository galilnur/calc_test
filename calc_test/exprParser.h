#ifndef EXPRPARSER_H
#define EXPRPARSER_H

#include <string>
#include <vector>
#include <ostream>

#include "exprLexeme.h"
#include "exprTree.h"

/*
 * Грамматика языка выражений:
 * expression = ( '(' expression ')' ) | simple_expression
 * simple_expression = ['-'] term *( ('+' | '-') term )
 * term = factor *( ('*' | '/') factor)
 * factor = !('+' | '-' | '*' | '/') (number | expression)
 */

namespace expression_parser {
class CExprParser
{
    std::vector<std::string> errors;

    static void appendPosition(std::string &err, TLexemeList::const_iterator &it, TLexemeList::const_iterator end);

    bool skipOpeningBracket(TLexemeList::const_iterator &it, TLexemeList::const_iterator end);
    bool skipClosingBracket(TLexemeList::const_iterator &it, TLexemeList::const_iterator end);
    bool parseSimpleExpression(TLexemeList::const_iterator &it, TLexemeList::const_iterator end, PExprTree &result);
    bool parseTerm(TLexemeList::const_iterator &it, TLexemeList::const_iterator end, PExprTree &result);
    bool parseFactor(TLexemeList::const_iterator &it, TLexemeList::const_iterator end, PExprTree &result);

public:
    CExprParser();
    bool parse(TLexemeList::const_iterator &it, TLexemeList::const_iterator end, PExprTree &result);
    void outputErrors(std::ostream &output);
};

}

#endif // EXPRPARSER_H
