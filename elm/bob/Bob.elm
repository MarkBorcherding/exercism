module Bob exposing (..)

import Regex exposing (regex, replace, contains)
import String exposing (isEmpty, endsWith)

type Message = Question | Shout | ForcefulQuestion | Nonsense | Basic | Silence

hey : String -> String
hey input =
    case message input of
        Shout -> "Whoa, chill out!"
        Question -> "Sure."
        Silence -> "Fine. Be that way!"
        ForcefulQuestion -> "Calm down, I know what I'm doing!"
        _ -> "Whatever."

question = endsWith "?"
hasUpper = contains (regex "[A-Z]")
hasLower = contains (regex "[a-z]")
shout input = hasUpper input && not (hasLower input)
silence input = replace Regex.All (regex "\\s") (\_ -> "") input
                |> isEmpty

message input =
    if shout input && question input then ForcefulQuestion
    else if silence input then Silence
    else if shout input then Shout
    else if question input then Question
    else Basic
