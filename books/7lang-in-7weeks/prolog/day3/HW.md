## Find:
- Prolog has some input/output features as well. Find print predicates that print out variables.
    - write('Hello, World!'). 
    - read(X).
- Find a way to use the print predicates to print only successful solutions. How do they work?
    - findall((X,Y,Z), pythagorean_triple(X,Y,Z), Triples),
    - maplist(writeln, Triples).
    - some builtin api
## Do:
- Modify the Sudoku solver to work on six-by-six 9x9 puzzles.
    - sudoku.pl
~Make the Sudoku solver print prettier solutions.~

~If you’re a puzzle enthusiast, you can get lost in Prolog. If you want
to dive deeper into the puzzles I’ve presented, Eight Queens is a good
place to start.
• Solve the Eight Queens problem by taking a list of queens. Rather
than a tuple, represent each queen with an integer, from 1–8. Get
the row of a queen by its position in the list and the column by the
value in the list.~
puzzles are ok, but I've had enough recursion for now \*_\*
