object SpaceAge {
  val onMercury = inYears(0.2408467)(_)
  val onVenus   = inYears(0.61519726)(_)
  val onEarth   = inYears(1)(_)
  val onMars    = inYears(1.8808158)(_)
  val onJupiter = inYears(11.862615)(_)
  val onSaturn  = inYears(29.447498)(_)
  val onUranus  = inYears(84.016846)(_)
  val onNeptune = inYears(164.79132)(_)

  val earthSecondsInYear = 60 * 60 * 24 * 365.25

  def inYears(orbitInEarthYears: Double)(seconds: Double) = {
    round(seconds / (orbitInEarthYears * earthSecondsInYear))
  }

  def round(d: Double) = Math.round(d * 100) / 100.0
}
