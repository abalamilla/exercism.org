#include "raindrops.h"
#include <string>
#include <functional>

using namespace std;

namespace raindrops {
    string convert(int input) {
        function<string(int, int, string)> helper = [&](int number, int factor, string message) -> string {
            if((number % factor) == 0) return message;

            return "";
        };

        string result = helper(input, 3, "Pling");
        result += helper(input, 5, "Plang");
        result += helper(input, 7, "Plong");

        if(result.empty()) result = to_string(input);

        return result;
    }
}  // namespace raindrops
