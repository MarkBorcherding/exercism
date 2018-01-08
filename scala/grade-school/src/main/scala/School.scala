import scala.collection.immutable.ListMap

class School {
  type DB = Map[Int, Seq[String]]

  private var internalDb = Map[Int, Seq[String]]()

  def add(name: String, g: Int):Unit =
    internalDb = internalDb + (g -> (grade(g) :+ name))

  def db: DB = internalDb

  def grade(g: Int): Seq[String] =
    internalDb.get(g).getOrElse(Nil)

  def sorted: DB =
    internalDb
      .toList
      .sortBy(_._1)
      .map { case (k, v) => k -> v.sorted }
      .toMap
}
