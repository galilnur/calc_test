#include <iostream>
#include <iomanip>

#include "exprLexer.h"
#include "exprParser.h"


using namespace std;

int main()
{
    cout << "Входное выражение:" << endl;
    std::string input;
    cin >> input;
//    input = "(-)";

    expression_parser::CExprLexer lexer;
    expression_parser::TLexemeList lexemes;
    if(!lexer.parse(input, lexemes))
    {
        cout << "Лексический разбор завершился неудачно!" << endl;
        lexer.outputErrors(cout);
        return 1;
    }

    expression_parser::CExprParser parser;
    expression_parser::PExprTree tree;
    expression_parser::TLexemeList::const_iterator begin = lexemes.cbegin();
    expression_parser::TLexemeList::const_iterator end = lexemes.cend();
    if(!parser.parse(begin, end, tree))
    {
        cout << "Синтаксический разбор завершился неудачно!" << endl;
        parser.outputErrors(cout);
        return 2;
    }

    double calc_result = 0;
    if(!tree->calculate(calc_result))
    {
        cout << "Ошибка! Деление на ноль" << endl;
        return 3;
    }
    cout << "Результат: " << setprecision(3) << calc_result << endl;

    return 0;
}
