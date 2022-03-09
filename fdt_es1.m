k= sym('k')
M1= sym('M1')
M2= sym('M2')
g = sym('g')
f = sym('f')
l= sym('l')


A=[0 1 0 0; -k/M1 -g*f k/M1 0; 0 0 0 1; k/M2 0 -k/M2 -g*f];
B=[0; 1/M1; 0; 0];
C=[ 1 0 0 0; 0 0 1 0];
D=0;

I= [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
E=(l*I - A);
IN= inv(E);
G = C*IN*B + D;

det (A - l*I);