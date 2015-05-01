% Kyle Groom
% 2/5/2015
% CS250

fprintf('define A');
A=[1.3, 2.1, -3.3, 4.1; 6.1, 2.4, -1.3, -3.1; -2.2, 5.1, 3.2, 2.1; 2.2, 6.1, 7.2, -5.1];
display(A);

fprintf('define B');
B=[2.1, -1.1, 1.2, 4.2; -4.6, 8.1, 9.2, -3.3; 2.5, 5.2, -3.3 4.2; -0.7 2.8, -6.3, 4.7];
display(B);

fprintf('define v');
v=[3.2; -4.6; 1.8; 7.1];
display(v);

fprintf('(a) Compute 3A-4B \n');
display((3*A) - (4*B));

fprintf('(b) Compute A - 4B^T');
display(minus(A, 4*transpose(B)));

fprintf('(c) Compute P = (1/2) * (A + A^T)');
P = (1/2) * (A + transpose(A));
display(P);

fprintf('(d) Compute Q = (1/2) * (A - A^T)');
Q = (1/2) * (A - transpose(A));
display(Q);

fprintf('(e) Compute P^T and Q^T to see that P in (c) is symmetric\n');
fprintf('and Q in (d) is skew-symmetric. Then compute\n');
fprintf('P+Q. What does it Equal?\n');

fprintf('P^T:'); display(transpose(P));
if(isequal(P, P.'))
    fprintf('P^T = P\n');
else
    fprintf('P^T =/= P\n');
end;

display('Q^T:'); display(transpose(Q));
if(isequal(-1*Q, Q.'))
    fprintf('Q^T = -Q\n');
else
    fprintf('Q^T =/= -Q\n');
end;

display('P + Q:'); display(P+Q);
if(isequal(P+Q, A))
    fprintf('P + Q = A\n');
else 
    fprintf('P + Q =/= A\n');
end;

fprintf('(f) Compute Av.\n Av:');
display(A*v);

fprintf('(g) Compute B(Av).\n B(Av):');
display(B*(A*v));

fprintf('(h) Compute A(Bv).\n A(Bv):');
display(A*(B*v));

fprintf('(i) Evaluate the linear combination\n\t');
fprintf('3.5a_1 - 1.2a_2 + 4.1a_3 + 2a_4,\n');
fprintf('and determine a vector w such that Aw equals this combination.\n');
fprintf('3.5a_1 - 1.2a_2 + 4.1a_3 + 2a_4 ->');
X=3.5*A(:,1) - 1.2*A(:,2) + 4.1*A(:,3) + 2*A(:,4);
display(X);
w = rref([A X]);
w = w(:, 5);
display(w);

fprintf('(j) Let M be the 4 x 4 matrix whose jth column is Ba_j for \n');
fprintf('1 <= j <=4. Verify that Me_j = B(Ae_j) for all j and verify that\n');
fprintf('Mv=B(Av). State and prove the generalization of this result to \n');
fprintf('all vectors in R^4.\n\n');
fprintf('define M=B*a_j:');
M= zeros(4,4);
for j = 1:4
    M(:,j) = B*A(:,j);
end
display(M);

I=eye(4);
for j = 1:4
    if (isequal(M*I(:,j), B*(A*I(:,j))))
        fprintf('Me%d = B(Ae%d) ', j, j);
    else
        fprintf('Me%d =/= B(Ae%d) ', j, j);
    end
end

fprintf('\n');

for i=1:4
    %if decimals are within tolerence levels
    if( abs(M*v(i, :) - B*(A*v(i, :))) < 0.0001)
        fprintf('Mv%d = B(Av%d) ', i, i);
    else
        fprintf('Mv%d = B(Av%d) ', i, i);
    end
end
fprintf('\n\n');

fprintf('Mu = B(Au) for every u in R^u, because M=B*A_j for all js,\n')
fprintf('and thus the equation becomes B(A_j*u) = B(Au) for all js, \n')
fprintf('which simplifies to B(Au)=B(Au). \n');