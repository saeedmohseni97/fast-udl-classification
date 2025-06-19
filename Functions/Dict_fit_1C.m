function [D, Error_vec] = Dict_fit_1C(D0, X, n, iteration, mu)
[m, Tc] = size(X);
Error_vec = zeros(iteration,1);
data = X*X';
Dt = D0;
[U,~,V] = svd(Dt);
for j = 1:iteration
    U = U + mu * data * [U(:,1:n) zeros(m,m-n)];
    U = Mat_Orthogonal_Project_1(U);    
    Dt = U*eye(m,n)*V';    
    temp = X - (Dt / (Dt'*Dt)) * Dt' * X;    
    Error_vec(j,1) = sum(diag(temp'*temp))/(Tc);
    disp('iteration = ' + string(j));
end  

D = Dt;
