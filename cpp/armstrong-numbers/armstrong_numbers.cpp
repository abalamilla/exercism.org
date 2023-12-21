#include "armstrong_numbers.h"
#include <string>
#include <functional>
#include <iostream>
#include <cmath>

using namespace std;

namespace armstrong_numbers {
    int process(int input) {
        function<int(int, int, int)> helper = [&](int number, int len, int accum) {
            if(number == 0) return accum;

            int digit = number % 10;

            return helper(number / 10, len, accum + pow(digit, len));
        };

        int len = to_string(input).size();
        return helper(input, len, 0); 
    }

    bool is_armstrong_number(int input) {
        int result = process(input);

        return input == result;
    }
}  // namespace armstrong_numbers
