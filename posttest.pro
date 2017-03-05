
%Pemilihan Model
predicates
pria(symbol,long,long,long) - nondeterm(o,i,o,o)
wanita(symbol,long,long,long) - nondeterm(o,i,o,o)
model(symbol,long,long,long) - nondeterm(o,i,o,o)

clauses
  pria(alex,20,190,70).
  pria(samson,19,194,75).
  pria(mimi,19,160,40).
  wanita(hijratul,19,182,60).
  wanita(raisa,20,150,50).
  
	
  model(Nama,Umur,Tinggi,Berat):-
	pria(Nama,Umur,Tinggi,Berat);
	wanita(Nama,Umur,Tinggi,Berat).

goal
  
  model(Nama,19,Tinggi,Berat).



