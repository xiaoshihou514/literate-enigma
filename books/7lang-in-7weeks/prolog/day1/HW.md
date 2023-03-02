## Find:
    - Some free Prolog tutorials
        - http://gprolog.org/manual/gprolog.pdf (literally gnu prolog manual)
        - https://www.cs.toronto.edu/~hojjat/384w10/PrologTutorial1.pdf (UofT LMAO)
    - A support forum (there are several)
        - http://computer-programming-forum.com/viewforum/55-prolog/35.htm (kinda)
        - https://sourceforge.net/p/gprolog/discussion/ (last post was in 2013)
    - One online reference for the Prolog version you’re using
        - http://gprolog.org/
## Do:
    - Make a simple knowledge base. Represent some of your favorite
      books and authors.
        - ./booklist.pl
    - Find all books in your knowledge base written by one author.
```
| ?- ['booklist.pl'].
| ?- wrote(demitry, What).      

What = metro_2033 ? ;

What = metro_2034 ? ;

What = metro_2035

yes
```
    - Make a knowledge base representing musicians and instruments.
      Also represent musicians and their genre of music.
        - ./music.pl
    - Find all musicians who play the guitar.
```
| ?- ['musicians.pl'].
| ?- plays(Who, guitar).

Who = hannes_wadar ? ;

Who = ps

yes
```
