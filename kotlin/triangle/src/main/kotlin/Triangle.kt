class Triangle<out T : Number>(val a: T, val b: T, val c: T) {
    fun no_zero_sides(a: Double, b: Double, c: Double): Boolean {
        return a > 0.0 && b > 0.0 && c > 0.0
    }

    fun equality(a: Double, b: Double, c: Double): Boolean {
        return a + b >= c
                && a + c >= b
                && b + c >= a
    }

    fun is_triangle(a: Double, b: Double, c: Double): Boolean {
        return no_zero_sides(a, b, c) && equality(a, b, c)
    }

    init {
        require(is_triangle(a.toDouble(), b.toDouble(), c.toDouble())) { "Not a triangle" }
    }
    
    val isEquilateral: Boolean = a == b && b == c
    val isIsosceles: Boolean = ((a == b || a == c) && b != c) || (b == c && a != b) || isEquilateral
    val isScalene: Boolean = a != b && a != c && b != c
}
