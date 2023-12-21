class Anagram(val source: String) {
    fun standarize(input: String): String {
        return input
                .toLowerCase()
                .toList()
                .sorted()
                .joinToString(separator = "")
    }

    fun match(anagrams: Collection<String>): Set<String> {
        return anagrams.filter { 
            source.toLowerCase() != it.toLowerCase() && standarize(source) == standarize(it) 
        }.toSet()
    }
}
