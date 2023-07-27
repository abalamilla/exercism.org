#include "allergies.h"
#include <string>
#include <unordered_set>
#include <iostream>
#include <functional>
#include <vector>
#include <algorithm>

using namespace std;

namespace allergies {
    vector<bool> to_binary(int value) {
        function<vector<bool>(int, vector<bool>)> helper = [&](int currentValue, vector<bool> accum) -> vector<bool> {
            if(currentValue == 0) return accum;
            int quotient = currentValue / 2;
            int reminder = currentValue % 2;
            accum.insert(accum.end(), reminder);

            return helper(quotient, accum);
        };

        return helper(value, vector<bool>());
    }

    vector<string> filter(vector<string> data, vector<bool> filter) {
        vector<string> filteredData = {};

        if(filter.empty()) return filteredData;

        for (std::size_t i = 0; i < data.size(); i++) {
            if(i >= filter.size()) { break; }

            if (filter[i]) {
                filteredData.push_back(data[i]);
            }
        }

        return filteredData;
    }

    vector<string> get_allergens(int score, vector<string> allergens) {
        vector<bool> filter = allergies::to_binary(score);
        vector<string> filteredAllergens = allergies::filter(allergens, filter);

        return filteredAllergens;
    }

    allergy_test::allergy_test(int score) {
        this->allergens = {
            "eggs",
            "peanuts",
            "shellfish",
            "strawberries",
            "tomatoes",
            "chocolate",
            "pollen",
            "cats"
        };
        this->score = score;
    }

    bool allergy_test::is_allergic_to(string allergen) {
        vector<string> allergens = get_allergens(this->score, this->allergens);
        unordered_set<string> result(allergens.begin(), allergens.end());
        auto search = result.find(allergen); 

        return search != result.end();
    }

    unordered_set<string> allergy_test::get_allergies() {
        vector<string> allergens = get_allergens(this->score, this->allergens);
        unordered_set<string> result(allergens.begin(), allergens.end());
        return result;
    }
}  // namespace allergies
