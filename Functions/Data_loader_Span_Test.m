function [Data_mat_test, test_label] = Data_loader_Span_Test(span_mat, T_test, c)
n = size(span_mat,2)/c;
m = size(span_mat,1);
Data_mat_test = zeros(m, T_test*c);
test_label = zeros(1,T_test*c);
for i = 1:c
    Data_mat_test(:, (i-1)*T_test+1:i*T_test) = span_mat(:, (i-1)*n+1:i*n) * randn(n,T_test); 
    test_label(:, (i-1)*T_test+1:i*T_test) = i;
end