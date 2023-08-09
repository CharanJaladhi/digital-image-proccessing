a=magic(4);
disp('a=');
disp(a);
b=input('Enter the Row < size of the Matrix');
c=input('Enter the Column < size of Matrix');
X=sprintf('Element of a matrix at position (%d %d) is %d',b,c,a(b,c)); 
disp(X);

N4=[a(b+1,c), a(b-1,c), a(b,c+1), a(b,c-1)];
disp('4 point neighbour is');
disp(N4);

N8=[a(b+1,c), a(b-1,c), a(b,c+1), a(b,c-1), a(b+1,c+1), a(b+1,c-1), a(b-1,c-1), a(b-1,c+1)];
disp('8 point neighbour is');
disp(N8);

ND=[ a(b+1,c+1), a(b+1,c-1), a(b-1,c-1), a(b-1,c+1)];
disp('Diagonal Neighbour'); disp(ND);

