Number d := Number getSlot("/")
Number / = method(m,
    if(m==0,return 0,
        return self d(m)
    )
)

(9/3) println // -> 3
(1/0) println // -> 0

//雷氏力学是吧
