Matrix := Object clone
Matrix raw := list()
Matrix fromRaw := method(m,
    mat := Matrix clone
    mat raw = m
    return mat
)
Matrix dims := method(
    return list(
        self raw at(0) size,
        self raw size
    )
)
Matrix printDat := method(
    self raw foreach(_,v,v println)
)

//dim
Matrix dim := method(w,h,
    m := list()
    i := 0
    for(i,1,h,
        row := list()
        j := 0
        for(j,1,w,row push(0))
        m push(row)
    )
    return Matrix fromRaw(m)
)

m := Matrix dim(5,2)
m printDat
// list(0,0,0,0,0)
// list(0,0,0,0,0)

//set
Matrix set := method(x,y,val,
    (self raw at(y)) insertAt(val,x)
    (self raw at(y)) removeAt(x+1)
)

m set(0,1,1)
m printDat
// list(0,0,0,0,0)
// list(1,0,0,0,0)

//get
Matrix get := method(x,y,
    row := self raw at(y)
    return if(row==nil, nil, row at(x))
)

m get(0,1) println // 1

//transpose
Matrix transpose := method(
    res := list()
    i := 0
    for(i,0,self dims at(0)-1,
        row := list()
        for(j,0,self dims at(1)-1,row push(self raw at(j) at(i)))
        res push(row)
    )
    return Matrix fromRaw(res)
)

newMatrix := m transpose()
(newMatrix get(1,0) == m get(0,1)) println // true
