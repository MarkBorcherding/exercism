module HelloWorld where

import Prelude
import Data.Maybe

helloWorld :: Maybe String -> String
helloWorld name = case name of
  Just n -> "Hello, " <> n <> "!"
  Nothing -> "Hello, World!"
