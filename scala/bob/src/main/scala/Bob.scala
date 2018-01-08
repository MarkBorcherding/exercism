
sealed class Statement(message:String)
object Statement {
  def apply(s: String) = s.trim match {
    case s if sayingNothing(s) => Nothing(s)
    case s if isYelling(s) => Shout(s)
    case s if isQuestion(s) => Question(s)
    case _ => Default(s)
  }
  val sayingNothing = (_:String).length() == 0
  val isQuestion = (_:String).endsWith("?")
  val hasLetters = (_:String).matches(".*[a-zA-Z].*")
  def isYelling(s: String) = s.toUpperCase() == s && hasLetters(s)
}

case class Question(message: String) extends Statement(message)
case class Shout(message: String) extends Statement(message)
case class Nothing(message: String) extends Statement(message)
case class Default(message: String) extends Statement(message)

object Bob {
  def response(statement: String): String = Statement(statement) match {
    case Nothing(_) => "Fine. Be that way!"
    case Shout(_) => "Whoa, chill out!"
    case Question(_) => "Sure."
    case _ => "Whatever."
  }
}
