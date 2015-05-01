% Kyle Groom
% 3/24/2015
% CS250

fprintf('Define A');
A=[8, 3, 3, 14, 6; 3, 3, 2, -6, 0; 2, 0, 1, 5, 2; 1, 1, 0, -1, 1];
display(A);

fprintf('Define v');
v=[4, 1, 1, 10, 4];
display(v);

fprintf('Define w');
w=[2, 1, 2, -4, 1];
display(w);

fprintf(' 3a) Compute det[v;A]');
display(det([v; A]));

fprintf(' and det[w;A]');
display(det([w; A]));

fprintf(' 3b) Compute det[v+w;A]');
display(det([v+w; A]));

fprintf(' and det[v; A] + det[w; A]');
display(det([v;A]+det([w; A])));

fprintf(' 3c) Compute det[3v-2w; A]');
display(det([3*v-2*w;A]));

fprintf(' and 3*det[v;A] - 2*det[w;A]');
display(3*det([v;A]) - 2*det([w;A]));

