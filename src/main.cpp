#include <iostream>
#include "Calculator.h"
int main()
{
    Calculator<int> calc;
    std::cout << calc.add(1, 2) << std::endl;
    return 0;
}
