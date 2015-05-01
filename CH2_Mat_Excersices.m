% Kyle Groom
% 3/24/2015
% CS250

fprintf('Define A');
A=[1, -1, 2, 1, 3; 0, 1, 1, 0, 1; 1, 2, 0, -1, 3;4, 0, 1, 0, -2; -1, 1, 2, 1, -3];
display(A);

fprintf('Define B');
B=[1, -1, 2, 3, 1; 1, 0, 1, 2, 2; -1, 0, 2, 1, -1];
display(B);

fprintf('Define C');
C=[2, -1, 1, 2, 3; 1, -1, 0, 1, 2; 3, 1, 2, 3, -1];
display(C);

fprintf('Define D');
D=[2, 3, -1; 1, 0, 4; -1, 0, 2; 2, 1, 1; 1, 2, 3];
display(D);

fprintf('1a) AD:');
display(A*D);

fprintf('1b) DB:');
display(D*B);

fprintf('1c) (AB^T)C');
display((A*B.')*C);