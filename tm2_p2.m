t=0:0.002:10
x = 1.5*sawtooth(2*pi*0.2*t)-0.5

subplot(3,1,1)
plot(t,x)
grid on

t=0:0.02:10
x = 1.5*sawtooth(2*pi*0.2*t)-0.5

subplot(3,1,2)
plot(t,x)
grid on

t=0:0.2:10
x = 1.5*sawtooth(2*pi*0.2*t)-0.5

subplot(3,1,3)
plot(t,x)
grid on