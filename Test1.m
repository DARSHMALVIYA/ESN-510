%let A be a 3x3 matrix
A=magic(3)

%Transpose of the matrix A 
B=A'

%Computing the inverse of matrix
C=inv(A)



%Loading image file 

X = imread('iit.png')
imshow(X)