predicates

 nondeterm minjam()

clauses
 
minjam:-
  write("Titin punya sepatu adidas"),nl,
  write("mimi ingin meminjam sepatu titin, berapa ukuran kaki mimi?"),nl,
  readchar(A),A='4'.
  
minjam:-
  write("\nMurni punya sepatu nike."),nl,
  write("mimi ingin meminjam sepatu, berapa ukuran kaki mimi?"),nl,
  readchar(A),A='5'.
  
minjam:-
  write("\nTidak ada sepatu yang cocok dengan kaki mimi"),nl,
  write("sehingga mimi harus membeli sepatu baru untuk tampil"),nl.

goal
 minjam.
  