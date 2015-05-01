% Kyle Groom
% 4/21/2015
% CS250

fprintf('Define B');
B=[2, 0, -4, 0, 0, -1; 1, -1, -2, -2, 1, 1; -1, 0, 1, 0, 0, 0; 0, 1, 2, 1, 0, 2; 0, -2, -4, -2, 1, 0; -1, 0, 2, 0, 0, 1];
display(B);

fprintf('Define Tb');
Tb = [1, 0, 1, -2, 1, 1; -1, -1, 1, 3, 0, 0; 0, 1, -2, 0, 0, 2; 2, 2, 3, 1, -1, 0];
display(Tb);

fprintf('Solve for A');
display(Tb * B^-1);