module HelloWorld exposing (..)

helloWorld : Maybe String -> String
helloWorld name =
    let target = Maybe.withDefault "World" name
    in String.concat ["Hello, ", target, "!"]
