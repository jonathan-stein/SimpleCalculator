#define CATCH_CONFIG_MAIN

#include <catch2/catch.hpp>
#include "Calculator.h"

TEST_CASE("Addition works") {
    Calculator<int> calcInt;
    REQUIRE(calcInt.add(1, 2) == 3);
}
