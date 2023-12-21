val complement = mapOf(
	'G' to "C",
	'C' to "G",
	'T' to "A",
	'A' to "U"
)

fun transcribeToRna(dna: String): String = dna.fold("") { accum, char -> accum + complement.getOrDefault(char, "") }
