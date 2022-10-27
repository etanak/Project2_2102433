%%%%%%% (a) %%%%%%
figure(1)
sys = tf([1 -1],[1 +0.3 -0.4]);
rlocus(sys,'b',-sys,'r')
%hold on
%legend('positive K','negative K')
hold on 
theta = linspace(0, 4*pi, 1000)
z = exp(complex(0,theta))
plot(z,'k')
hold on 
legend('positive K','negative K','unit circle')




%%%%%%% (b) %%%%%%
figure(2)
sys = tf([1 -1],[1 +0.3 -0.4 0]);
rlocus(sys,'b',-sys,'r')
%hold on
%legend('positive K','negative K')
hold on 
theta = linspace(0, 4*pi, 1000)
z = exp(complex(0,theta))
plot(z,'k')
hold on 
legend('positive K','negative K','unit circle')
