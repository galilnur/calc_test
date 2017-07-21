#ifndef EXPRTREE_H
#define EXPRTREE_H

#include <string>
#include <memory>

namespace expression_parser {

class CExprTree;
typedef std::shared_ptr<CExprTree> PExprTree;

enum class OperationType
{
    VALUE,
    ADDITION,
    SUBTRACTION,
    MULTIPLICATION,
    DIVISION
};

class CExprTree
{
    static const char* const OperationTypeStrings[];

    OperationType operation;
    double value; // for value node type
    PExprTree left, right; // left is empty for unary operation, both are empty for value


public:
    CExprTree(const double value); // VALUE node creation
    CExprTree(const OperationType operation, const PExprTree &left, const PExprTree &right);
    std::string representation() const; // for testing purposes
    bool calculate(double &result) const; // false -
};

}

#endif // EXPRTREE_H
