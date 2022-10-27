%%%%%%%%%%%%%% forward Euler %%%%%%%%%%%%
h = 0.2
b = [1 -1];
a = [1 3 2 0];
[A,B,C,D] = tf2ss(b,a)
[n,d] = ss2tf(eye(3)+A*h,B*h,C,D)
P_d = tf(125*n,125*d) 

%verify
syms z
expand((5*z-5)*(5*z-4)*(5*z-3))
%%%%%%%%%%%% ZOH %%%%%%%%%%%%%%




G = tf([1 -1],[1 3 2 0]) 
Gd = c2d(G,h)
impulse(G,'b',Gd,'r')
legend('Continuous','Discretized')

% sysd = c2d(G,0.2,'zoh')
%sysd = c2d(G,0.2,'foh')