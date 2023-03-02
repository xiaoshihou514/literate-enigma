// sums a matrix
sum := method(m,
    s := 0
    m foreach(_,v,
        v foreach(_,iv,
            s = s + iv
        )
    )
    return s
)

sum(
    list(
        list(1,2,3,4,5),
        list(2,3,4,5,6)
    )
) println
// -> 35

// calc the avg of a matrix
avg := method(m,
    c := 0
    s := 0
    m foreach(_,v,
        v foreach(_,iv,
            if(iv type == Number type,
                s = s + iv ; c = c + 1,
                Exception raise("Not a number!")
            )            
        )
    )
    return s/c
)

avg(
    list(
        list(1,2,3,4,5),
        list(2,3,4,5,6)
    )
) println
// -> 3.5

//reads a matrix from a file
read := method(
    mat := list()
    f := File with("matrix.file")
    f open
    line := f readLine
    while(line != nil,
        strs := line split(",")
        row := list()
        strs foreach(_,v,
            row push(v asNumber)
        )
        mat push(row)
        line = f readLine
    )
    return mat
)

m := read()
m foreach(_,v,
    v println
)
/*
* list(3,4,5,6,1)
* list(6,7,9,1,0)
* list(1,3,4,7,9)
* list(6,5,4,3,2)
*/

