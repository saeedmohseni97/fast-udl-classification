function D = Matrix_Normalizer(D0)
D = D0./(vecnorm(D0) + 2^(-32));
end