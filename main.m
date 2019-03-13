function [u,s,v,lambda,X,Y,m,n] = main(c1,c2,c3)
% This function produces the svd, eigen values, and PC projections.

X=makeX(c1,c2,c3);

[m,n]=size(X); % compute data size

[u,s,v]=svd(X,'econ'); % perform the SVD

lambda=diag(s).^2; % produce diagonal variances
Y=u.'*X; % produce the principal components projection

