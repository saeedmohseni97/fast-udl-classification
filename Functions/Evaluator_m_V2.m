function [Rate, t_end] = Evaluator_m_V2(D, X_test, Y_test)
N_test = size(X_test,2);
c = size(D,3);
n = size(D,2);
[m, N] = size(X_test);
predict_mat = zeros(m,N,c);

G = zeros(n,m,c);
for i = 1:c
    G(:,:,i) =  pinv(D(:,:,i));
end

t_start = tic;
for i =1:c
    temp = G(:,:,i) * X_test;
    temp = D(:,:,i) * temp;
    predict_mat(:,:,i) = X_test - temp;
end
[~,predict] = min(vecnorm(predict_mat,2,1), [], 3);
Rate = sum(predict==Y_test)/N_test;
t_end = toc(t_start)/N_test;