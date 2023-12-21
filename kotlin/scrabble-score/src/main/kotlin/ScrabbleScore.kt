object ScrabbleScore {

    var letters: Map<String, Int> = mapOf(
        "A, E, I, O, U, L, N, R, S, T" to 1,
        "D, G" to 2,
        "B, C, M, P" to 3,
        "F, H, V, W, Y" to 4,
        "K" to 5,
        "J, X" to 8,
        "Q, Z" to 10
    )

    val map = letters.map { entry -> entry.key.map { it }.associateWith { entry.value }}.reduce { accum, entry -> accum + entry }
        
    fun scoreLetter(c: Char): Int {
        return map.getOrDefault(c.toUpperCase(), 0)
    }

    fun scoreWord(word: String): Int = word.fold(0) { accum, char -> accum + scoreLetter(char) }
}
