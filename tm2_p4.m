t=0:0.002:6
x=0.8*sin(2*pi*0.33*t)
y=x.*(x>=0)

subplot(3,1,1)
plot(t,y,'.')
grid on

t=0:0.02:6
x=0.8*sin(2*pi*0.33*t)
y=x.*(x>=0)

subplot(3,1,2)
plot(t,y,'.')
grid on

t=0:0.2:6
x=0.8*sin(2*pi*0.33*t)
y=x.*(x>=0)

subplot(3,1,3)
plot(t,y,'.-')
grid on