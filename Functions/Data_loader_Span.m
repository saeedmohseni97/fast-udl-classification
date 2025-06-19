function [Data_mat, span_mat] = Data_loader_Span(n, m, T, c)
span_mat = zeros(m,n*c);
Data_mat = zeros(m,T,c);
k = 1;
k2 = 1;
for i = 1:c
    span_mat_temp = randn(m,n);
    Data_mat(:,:,i) = span_mat_temp * k * randn(n,T) + k2 * randn(m,T);
    span_mat(:,(i-1)*n+1:i*n) = span_mat_temp;
end
