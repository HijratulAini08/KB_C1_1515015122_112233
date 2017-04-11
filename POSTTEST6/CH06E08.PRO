/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH06E08.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  factorial(unsigned,real) - procedure (i,o)
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i)

/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):- %2. prolog membaca rule pertama, dan ternyata rule pertama sesuai dengan goal,maka
  		       %   dilakukan proses unifikasi dimana N=3 dan X=FactN. JIKA
	factorial(N,FactN,1,1.0). %3. karena pada subgoals tersebut berisikan argumen variable. maka prolog 
				  %   mencari aturan yang cocok. lalu melakukan proses unifikasi.

  factorial(N,FactN,N,FactN):-!. %4. prolog membaca rule tsb, dimana ketika factorial(3,FactN,3,FactN) maka akan 
  				 %   memaksa program untuk berhenti.
  				 %   maksudnya, ketika factorial(3,FactN,3,FactN) dimana arg.ke-1 dan ke-3 bernilai 3
  				 %   dan arg. ke-2 dan ke-4 akan bernilai sama, maka akan memaksa program untuk berhenti.
  				 
  factorial(N,FactN,I,P):- % 5. setelah dilakukan pengecekkan ternyata, aturan rule tsb, sesusai dengan subgoal pada langkah ke-3.
  		     	   %    kemudian dilakukan proses unifikasi pada variable N=3, FactN= ? , I=1 dan P=1. JIKA
	NewI = I+1, %6. pada subgoal pertama dilakukan proses perhitungan dimana, 2=1+1. sehinggan NewI=2
	NewP = P*NewI, %7. pada subgoal kedua dilakukan proses perhitungan dimana, 2=1x2. sehinggan NewP=2
	factorial(N, FactN, NewI, NewP). %8.sehingga nilai factorial tsb adalah(3,FactN,2,2)
 %9. selanjutnya dilakukan proses pengecekan seperti pada langkah ke-4. apakah nilai  pada factorial pada langkah ke-4 telah sesuai dengan nilai factorial pada langkah ke-8
 %   ternyata tidak sesuai, karena nilai pada var.I tidak sama dengan nilai pada var.N. sehingga dilakukan perhitungan kembali.
 %10. melakukan proses perhitungan, seperti pada langkah ke-6. dimana 3=2+1. sehinga NewI=3
 %11. melakukan proses perhitungan, seperti pada langkah ke-7. dimana 6=2+3. sehinga NewP=6
 %12. sehingga nilai factorial tsb adalah(3,FactN,3,6)
 %13. selanjutnya dilakukan proses pengecekan seperti pada langkah ke-9. apakah nilai  pada factorial pada langkah ke-4 telah sesuai dengan nilai factorial pada langkah ke-12
 %    ternyata sesuai, karena nilai pada var.I sama dengan nilai pada var.N. karena pada langkah ke-4 telah dijelaskan 
 %    jika arg.ke-1 dan ke-3 bernilai 3 dan arg. ke-2 dan ke-4 bernilai sama, dimana arg. ke-4 bernilai 6. maka arg.ke-2 bernilai 6 juga.
 %    SELANJUTNYA PROGRAM DIPAKSA UNTUK BERHENTI, KARENA TELAH MEMENUHI SYARAT.
 %14. karena pada goal yang dicari Nilai dari X, dimana X=FactN. dan FactN bernilai 6. maka X=6. 
 %    SELESAI.


goal
  factorial(3,X). %1. prolog akan membaca goal, dan mencari jawaban pada bagian klausa
