r := Random value(1,100) floor
// I do not have libraedline installed properly (Io was installed via xdeb)
// so I can't really test the code
g := -1
in := ""
round := 1
"Guess the random integer between 1 and 100, generated with Io!"
while(g!=r and round!=10,
    in = ReadLine
    g = in asNumber
    if(g>r,"Colder!" println)
    if(g>r,"Hotter!" println)
    if(g==r,"You won!" println;exit)
)
"10 rounds already, you lost"
