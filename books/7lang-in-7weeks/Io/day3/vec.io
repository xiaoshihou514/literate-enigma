squareBrackets := method(
    r := list
    call message arguments foreach(arg,
        r push(arg)
    )
    return r
)
[1,2,3,4] println # -> list(1,2,3,4)
