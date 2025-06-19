function Data_mat = Data_loader_Span_Specific(span_mat, T, c)
m = size(span_mat,1);
n = size(span_mat,2)/c;
Data_mat = zeros(m,T,c);
k = 1;
k2 = 1;
for i = 1:c
    Data_mat(:,:,i) = span_mat(:,(i-1)*n+1:i*n) * k * randn(n,T) + k2 * randn(m,T);
end
