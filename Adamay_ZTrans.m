clc
clear all;
syms n z
x=((0.5)^n)+((2)^n);

xz=ztrans(x,n,z);
y=simplify(xz);
b=[2 -5/2 0];
a=[1 -5/2 1];
zplane(b,a);
xlabel=('Re(Z)-->');
ylabel=('Im(Z)-->');
grid on