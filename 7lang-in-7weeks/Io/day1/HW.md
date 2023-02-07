## Find:

    - Some Io example problems
        - https://gist.github.com/jezen/7972975, I saved it in ./example.io in case the gist
          got deleted
    - An active Io community
        - https://www.reddit.com/r/iolanguage/
        - I found the link at https://iolanguage.org/links.html
        - Actually, the reddit has been dead for quite some time
        - Here's a place where you can talk to the founder of the project lmao
        - https://github.com/IoLanguage/io/discussions
    - An Io style guide with examples
        - https://en.wikibooks.org/wiki/Io_Programming/Io_Style_Guide

## Answer:

    - Eval 1+1 and 1+'one'. Is Io strongly typed or weakly typed? Support your answer with code
        - 1+1 -> 2, 1+'one' -> Exception
        - Io is strongly typed
        ```

        Io> num := 1
        ==> 1
        Io> num=2
        ==> 2
        Io> num='one'

        Exception: Number does not respond to '=''

        ---

        Number =' Command Line 1

        ```
    - Is 0 true or false? What about an empty string? Or nil? Support your answer with code
        - 0 -> true, '' -> neither, nil -> false
        ```
        Io> 4<5 and true
        ==> true
        Io> 0 and true
        ==> true
        Io> '' and true

          Exception: Object does not respond to ''''
          ---------
          Object ''                            Command Line 1

        Io> nil and true
        ==> false
        ```
    - How can you tell what slots a prototype supports?
        - Object slotNames
    - What is the difference between =, := and ::=? What are their use cases?
        - := refers to first time assignment, and = -> normal assignment
        - In fact, here's a more precise definition
          https://iolanguage.org/guide/guide.html#Syntax-Expressions

| operator | action                                                         |
| -------- | -------------------------------------------------------------- |
| ::=      | Creates slot, creates setter, assigns value                    |
| :=       | Creates slot, assigns value                                    |
| =        | Assigns value to slot if it exists, otherwise raises exception |

        - A setter means it generates an setAge for age, for example

## Do

    - Run an Io program from a file
        - io ./hello.io
    - Execute the code in a slot given its name
        - Object method
        - For example Object print
