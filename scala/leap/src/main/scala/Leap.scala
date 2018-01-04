object Leap {
  def leapYear(year: Int): Boolean =
    every4(year) && ( !every100(year) || every400(year) )

  def every(n:Int)(y:Int) = y % n == 0
  val every4 = every(4)(_)
  val every100 = every(100)(_)
  val every400 = every(400)(_)
}
