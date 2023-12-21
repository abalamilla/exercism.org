class PhoneNumber(val input: String) {
    fun process(): String {
        val regex = Regex("^(?:\\+?1(?:\\W+)?)?\\(?([2-9]\\d{2})\\)?(?:\\W+)?([2-9]\\d{2})(?:\\W+)?(\\d{4})(?:\\W+)?$")

        if (!regex.containsMatchIn(input)) throw IllegalArgumentException()

        return regex.find(input)!!.groupValues.drop(1).joinToString("")
    }

    val number: String? = process()
}
