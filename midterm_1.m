A = [0 1 0
    0 0 1
    1 -1 1]
B = [0 0 1]'
u = [1 1 2 1]
x_k = [1 0 0]'
final = 4
for i = 1:final
    x_k = A*x_k+B*u(i)   
end
% X = sprintf('x_4 is %f',x_k);
disp("x_4 is")
disp(x_k)