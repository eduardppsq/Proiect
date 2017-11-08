
T=1/440;
t=0:0.00001:3*T;
sm=monosin(440, 110);
sd=doublesin(440, 110);
subplot(2,1,1);
plot(t, sm, '-' )
xlabel('sinus mono-alternanta')
subplot(2,1,2);
plot(t, sd, '-r' )
xlabel('sinus dubla-alternanta')

