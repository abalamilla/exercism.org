#include "reverse_string.h"
#include <string>
#include <iterator>

using namespace std;

namespace reverse_string {
    string reverse_string(string str) {
        string result = "";

        copy(str.crbegin(), str.crend(), back_inserter(result));

        return result;
    }
}  // namespace reverse_string
