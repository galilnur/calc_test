#ifndef EXPRLEXER_H
#define EXPRLEXER_H

#include <string>
#include <vector>
#include <ostream>

#include "exprLexeme.h"

namespace expression_parser {

const int ALLOWED_CHARS_COUNT = 18;
const char allowedChars[ALLOWED_CHARS_COUNT] = { '+', '-', '*', '/', '.', ',', '(', ')', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

bool isAllowed(const char ch);
bool isDigit(const char ch);
bool isSeperator(const char ch);

class CExprLexer
{
    std::vector<std::string> errors;
    int position;

    bool parseLexeme(std::string::const_iterator &it, std::string::const_iterator end, PExprLexeme &lexeme);

public:
    CExprLexer();
    bool parse(const std::string &expr, TLexemeList &lexemeList);
    void outputErrors(std::ostream &output); // outputs errors and clears error list
};

}
#endif // EXPRLEXER_H
