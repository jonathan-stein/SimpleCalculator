#pragma once
template <typename T>
class Calculator
{
public:
    T add(T a, T b) { return a + b; }
    T sub(T a, T b) { return a - b; }
    T mult(T a, T b) { return a * b; }
    T div(T a, T b) { return a / b; }
};
