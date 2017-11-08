t=0:0.002:8
x=1.5*sin(2*pi*0.25*t)

y=abs(x)
subplot(3,1,1)
plot(t,y,'.')
grid on

t=0:0.02:8
x=1.5*sin(2*pi*0.25*t)

y=abs(x)
subplot(3,1,2)
plot(t,y,'.')
grid on

t=0:0.2:8
x=1.5*sin(2*pi*0.25*t)

y=abs(x)
subplot(3,1,3)
plot(t,y,'.-')
grid on