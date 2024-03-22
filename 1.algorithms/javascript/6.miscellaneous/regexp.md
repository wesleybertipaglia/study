# RegExp

A regular expression is a pattern of characters.

The pattern is used for searching and replacing characters in strings.

The RegExp Object is a regular expression with added Properties and Methods.

```js
const pattern = /hello/
const anotherPattern = new RegExp('hello')
```

## Properties

```js
pattern.global // Checks whether the "g" modifier is set
pattern.ignoreCase // Checks whether the "i" modifier is set
pattern.lastIndex // Specifies the index at which to start the next match
pattern.multiline // Checks whether the "m" modifier is set
pattern.source // Returns the text of the RegExp pattern
```

## Methods

```js
exec() // Tests for a match in a string
test() // Tests for a match in a string
toString()
```

## Modifiers

Modifiers define how to perform the seach:

```js
/g // Perform a global match (find all)
/i // Perform case-insensitive matching
/m // Perform multiline matching
```

## Brackets

Brackets are used to find a range of characters:

```js
[abc]; // Find any character between the brackets
[^abc] // Find any character NOT between the brackets
[0-9] // Find any character between the brackets (any digit)
[^0-9] // Find any character NOT between the brackets (any non-digit)
(x|y) // Find any of the alternatives specified
```

## Quantifiers

```js
n+ // Matches any string that contains at least one n
n* // Matches any string that contains zero or more occurrences of n
n? // Matches any string that contains zero or one occurrences of n
n{X} // Matches any string that contains a sequence of X n's
n{X,Y} // Matches any string that contains a sequence of X to Y n's
n{X,} // Matches any string that contains a sequence of at least X n's
n$ // Matches any string with n at the end of it
^n // Matches any string with n at the beginning of it
?=n // Matches any string that is followed by a specific string n
?!n // Matches any string that is not followed by a specific string n
```

## Metacharacters

```js
. // Find a single character, except newline or line terminator
\w // Find a word character
\W // Find a non-word character
\d // Find a digit
\D // Find a non-digit character
\s // Find a whitespace character
\S // Find a non-whitespace character
\b // Find a match at the beginning/end of a word, beginning like this: \bHI, end like this: HI\b
\B // Find a match, but not at the beginning/end of a word
\0 // Find a NULL character
\n // Find a new line character
\f // Find a form feed character
\r // Find a carriage return character
\t // Find a tab character
\v // Find a vertical tab character
\xxx // Find the character specified by an octal number xxx
\xdd // Find the character specified by a hexadecimal number dd
\udddd // Find the Unicode character specified by a hexadecimal number dddd
```
