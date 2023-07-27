#include <string>
#include <regex>

using namespace std;

namespace log_line {
    regex pattern() {
        regex rgx("\\[(INFO|WARNING|ERROR)\\]: +([a-zA-Z0-9 ]+)");
        return rgx;
    }

    string message(string log) {
        return regex_replace(log, log_line::pattern(), "$2");
    }

    string log_level(string log) {
        return regex_replace(log, log_line::pattern(), "$1");
    }

    string reformat(string log) {
        return regex_replace(log, log_line::pattern(), "$2 ($1)");
    }
} // namespace log_line
