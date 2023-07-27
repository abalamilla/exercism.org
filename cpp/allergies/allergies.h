#if !defined(ALLERGIES_H)
#define ALLERGIES_H
#include <string>
#include <unordered_set>
#include <vector>

using namespace std;

namespace allergies {
    class allergy_test {
        private:
            int score = 0;
            vector<string> allergens;
        public:
            allergy_test(int score); 
            bool is_allergic_to(string allergen);
            unordered_set<string> get_allergies();
    };
}  // namespace allergies

#endif // ALLERGIES_H
