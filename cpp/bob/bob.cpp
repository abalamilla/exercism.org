#include "bob.h"
#include <string>
#include <regex>
#include <iostream>

using namespace std;

namespace bob {
    string cleanMessage(string message) {
        regex invalidCharacters("[^0-9a-zA-Z?!]+");
        return regex_replace(message, invalidCharacters, "");
    }

    int testQuestion(string message) {
        return message.back() == '?' ? 1 : 0;
    }

    int testAllCapitals(string message) {
        regex nonLetters("[^a-zA-Z]");
        string letters = regex_replace(message, nonLetters, "");
        regex uppercaseRegex("^[A-Z]+([?!]+)?$");

        return regex_match(letters, uppercaseRegex) ? 2 : 0;
    }

    int testEmpty(string message) {
        regex emptyChars("[\\n\\r\\s]+");
        string cleanedMessage = regex_replace(message, emptyChars, "");

        return cleanedMessage.empty() ? 4 : 0;
    }

    int weight(string message) {
        string cleanedMessage = bob::cleanMessage(message);
        int result = bob::testQuestion(cleanedMessage) +
            bob::testAllCapitals(cleanedMessage) +
            bob::testEmpty(message);

        return result;
    }
    
    string hey(string message) {
        int messageWeight = bob::weight(message);

        switch(messageWeight) {
            case 1:
                return "Sure.";
            case 2:
                return "Whoa, chill out!";
            case 3:
                return "Calm down, I know what I'm doing!";
            case 4:
                return "Fine. Be that way!";
            default:
                return "Whatever.";
        }
    }
}  // namespace bob
