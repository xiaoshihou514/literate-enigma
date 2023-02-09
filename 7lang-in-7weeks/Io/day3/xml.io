Builder := Object clone
Builder _depth := 0
Builder _indent := method(
    i := 1
    for(i, 1,self _depth,self _indentOnce)
)
Builder reset := method(self _depth = 0)
Builder _indentOnce := method(write("    "))

//standalone enhanced indent
Builder forward := method(
    self _indent
    writeln("<" , call message name,">" )
    call message arguments foreach(arg,
        self _depth = self _depth + 1
        content := self doMessage(arg);
        if(content type == "Sequence", 
            self _indent
            writeln(content)
            self _depth = self _depth - 1
        )
    )
    self _indent
    writeln("</" , call message name,">" )
    self _depth = self _depth - 1
)

Builder ul(
    li("Io"),
    li("Lua"),
    li("JavaScript")
)
Builder reset # to not mess up the code below

/* <ul>
*      <li>
*          Io
*      </li>
*      <li>
*          Lua
*      </li>
*      <li>
*          JavaScript
*      </li>
*  </ul>
*/

// attr support
// book({"author": "Tate"})
// <book author="Tate">
// Assuming tags always come first

// Below is the exact same code from the book
OperatorTable addAssignOperator(":", "atPutNumber" )
curlyBrackets := method(
    r := Map clone
    call message arguments foreach(arg,
        r doMessage(arg)
    )
    r
)
Map atPutNumber := method(
    self atPut(
    call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
    call evalArgAt(1))
)

// Now every tag is evaluated as a Map
Builder forward := method(
    self _indent
    args := call message arguments
    write("<" , call message name)
    tag := doString(args at(0) asString)
    if(tag type == Map type,
        tag asList foreach(p,
            write(" ", p at(0), "=\"", p at(1), "\"")
        )
        args removeAt(0)
    )
    write(">\n")
    args foreach(arg,
        self _depth = self _depth + 1
        content := self doMessage(arg);
        if(content type == "Sequence", 
            self _indent
            writeln(content)
            self _depth = self _depth - 1
        )
    )
    self _indent
    writeln("</" , call message name, ">")
    self _depth = self _depth - 1
)

Builder sevenLangInSevenWeeks(
    {
        "author": "Tate", 
        "bookType": "tech_book"
    },
    li("Io"),
    li("Lua"),
    li("JavaScript")
)

