object Hamming {

    fun process(ls: String, rs: String): Int {
        fun helper(restLs: String, restRs: String, accum: Int): Int {
            println("--->>> $restLs - $restRs - $accum")
            return if (restLs.isEmpty()) accum
                    else {
                        val newAccum = if (restLs.first() == restRs.first()) accum 
                            else accum + 1

                        helper(restLs.drop(1), restRs.drop(1), newAccum)
                    }
        }

        return helper(ls, rs, 0)
    }

    fun compute(leftStrand: String, rightStrand: String): Int {
        return if (leftStrand == rightStrand) 0 
                else if (leftStrand.length != rightStrand.length) throw IllegalArgumentException("left and right strands must be of equal length")
                else process(leftStrand, rightStrand)
    }
}
