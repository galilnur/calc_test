#include "exprTree.h"

namespace expression_parser {

const char* const CExprTree::OperationTypeStrings[] = {
    "VALUE",
    "ADDITION",
    "SUBTRACTION",
    "MULTIPLICATION",
    "DIVISION"
};

CExprTree::CExprTree(const double value)
    : operation(OperationType::VALUE), value(value) {}

CExprTree::CExprTree(const OperationType operation, const PExprTree &left, const PExprTree &right)
    : operation(operation), left(left), right(right), value(0) {}

bool CExprTree::calculate(double &result) const
{
    if(operation == OperationType::VALUE)
    {
        result = value;
        return true;
    }
    // calculate operands
    bool ok = true;
    double leftValue = 0, rightValue = 0;
    if(left) ok = left->calculate(leftValue);
    if(right) ok = ok && right->calculate(rightValue);

    // check if division by zero occured in any of subtrees
    if(!ok) return false;

    // calculate result
    if(operation == OperationType::ADDITION)
        result = leftValue + rightValue;
    else if (operation == OperationType::SUBTRACTION)
        result = leftValue - rightValue;
    else if (operation == OperationType::MULTIPLICATION)
        result = leftValue * rightValue;
    else if (operation == OperationType::DIVISION)
    {
        if(rightValue >= 0 && rightValue <= 0.00000001d) return false;
        result = leftValue / rightValue;
    }
    return true;
}

std::string CExprTree::representation() const
{

}

}
