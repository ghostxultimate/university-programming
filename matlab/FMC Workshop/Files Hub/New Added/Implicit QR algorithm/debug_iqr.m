clc;
clear;
k=5;
A=rand(k,k);
maxit=k^2;
tol=1e-4;
[R1,~]=IQR_method(A,maxit,tol);
R3=francis_qr(A,maxit,tol);
sort([eig(R1),eig(A),eig(R3)])