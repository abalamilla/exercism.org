fun twofer(name: String? = null): String {
    val friend = if (name == null) "you" else name
    return "One for $friend, one for me."
}
