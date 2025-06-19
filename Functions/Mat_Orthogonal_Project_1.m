function W = Mat_Orthogonal_Project_1(D)
W = D;
[V,D] = eig(W*W');
index = (D ~= 0);
D(index) = D(index).^(-.5);
W = V*D*V'*W;
end