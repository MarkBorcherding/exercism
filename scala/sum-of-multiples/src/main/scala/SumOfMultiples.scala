object SumOfMultiples {

  def factorableBy(factors: Set[Int])(i:Int):Boolean =
    factors
      .filter(i % _ == 0)
      .nonEmpty

  def sum(factors: Set[Int], limit: Int): Int =
    (1 until limit) filter factorableBy(factors) sum
}

