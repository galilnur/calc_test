#ifndef EXPRLEXEME_H
#define EXPRLEXEME_H

#include <string>
#include <memory>
#include <vector>

namespace expression_parser {

struct SExprLexeme
{
    enum Type : int
    {
        ADDITION,
        SUBTRACTION,
        MULTIPLICATION,
        DIVISION,
        OPEN_BRACKET,
        CLOSE_BRACKET,
        NUMBER
    };
    int position;
    Type type;
    std::string value; // empty for all except NUMBER

    SExprLexeme(const Type lexemeType, int position)
        : type(lexemeType), position(position) {}
    SExprLexeme(const Type lexemeType, const std::string &lexemeValue, int position)
        : type(lexemeType), value(lexemeValue), position(position) {}

    std::string representation() const; // for testing purposes

    inline bool isAddition() const {
        return type == ADDITION;
    }
    inline bool isSubtraction() const {
        return type == SUBTRACTION;
    }
    inline bool isMultiplication() const {
        return type == MULTIPLICATION;
    }
    inline bool isDivision() const {
        return type == DIVISION;
    }
    inline bool isOperation() const {
        return type == ADDITION || type == SUBTRACTION || type == MULTIPLICATION || type == DIVISION;
    }
    inline bool isOpeningBracket() const {
        return type == OPEN_BRACKET;
    }
    inline bool isClosingBracket() const {
        return type == CLOSE_BRACKET;
    }
    inline bool isNumber() const {
        return type == NUMBER;
    }
};

typedef std::shared_ptr<SExprLexeme> PExprLexeme;
typedef std::vector<PExprLexeme> TLexemeList;

}

#endif // EXPRLEXEME_H
