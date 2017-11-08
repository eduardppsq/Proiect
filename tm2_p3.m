t = 0:0.002:1;
y = square(2*pi*2*t)+randn(size(t))/10
%subplot(3,3,1)
plot(t,y,'.-')
grid on