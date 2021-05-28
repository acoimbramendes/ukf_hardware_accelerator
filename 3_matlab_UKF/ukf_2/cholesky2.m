function [F]=cholesky2(A,option)
%Function to find the Cholesky factor of a Positive Definite matrix A
 
%Author Mathuranathan for https://www.gaussianwaves.com
 
%Licensed under Creative Commons: CC-NC-BY-SA 3.0
 
%A = positive definite matrix
 
%Option can be one of the following 'Lower','Upper'
 
%L = Cholesky factorizaton of A such that A=LL^T
 
%If option ='Lower', then it returns the Cholesky factored matrix L in
 
%lower triangular form
 
%If option ='Upper', then it returns the Cholesky factored matrix L in
 
%upper triangular form    
 
 
%Test for positive definiteness (symmetricity need to satisfy)
 
%Check if the matrix is symmetric
 
if ~isequal(A,A'),
    error('Input Matrix is not Symmetric');
end
    
if isPositiveDefinite(A),
    [m,n]=size(A);
    L=zeros(m,m);%Initialize to all zeros
    row=1;col=1;
    j=1;
    for i=1:m,
        a11=sqrt(A(1,1));
        L(row,col)=a11;
        if(m~=1), %Reached the last partition
            L21=A(j+1:m,1)/a11;
            L(row+1:end,col)=L21;
            A=(A(j+1:m,j+1:m)-L21*L21');
            [m,n]=size(A);
            row=row+1;
            col=col+1;
        end
    end
    switch nargin
        case 2
            if strcmpi(option,'upper'),F=L';
            else
                if strcmpi(option,'lower'),F=L;
                else error('Invalid option');
                end
            end
        case 1
            F=L;
        otherwise
            error('Not enough input arguments')
    end
else
        error('Given Matrix A is NOT Positive definite');
end
end