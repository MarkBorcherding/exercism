# Leap

Given a year, report if it is a leap year.

The tricky thing here is that a leap year in the Gregorian calendar occurs:

```text
on every year that is evenly divisible by 4
  except every year that is evenly divisible by 100
    unless the year is also evenly divisible by 400
```

For example, 1997 is not a leap year, but 1996 is.  1900 is not a leap
year, but 2000 is.

If your language provides a method in the standard library that does
this look-up, pretend it doesn't exist and implement it yourself.

## Notes

Though our exercise adopts some very simple rules, there is more to
learn!

For a delightful, four minute explanation of the whole leap year
phenomenon, go watch [this youtube video][video].

[video]: http://www.youtube.com/watch?v=xX96xng7sAE

## Elm Installation

Refer to the [Exercism help page](http://exercism.io/languages/elm) for Elm
installation and learning resources.

## Writing the Code

The first time you start an exercise, you'll need to ensure you have the
appropriate dependencies installed.

```bash
$ npm install
```

Execute the tests with:

```bash
$ npm test
```

Automatically run tests again when you save changes:

```bash
$ npm run watch
```

As you work your way through the test suite, be sure to remove the `skip <|`
calls from each test until you get them all passing!

## Source

JavaRanch Cattle Drive, exercise 3 [http://www.javaranch.com/leap.jsp](http://www.javaranch.com/leap.jsp)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.
