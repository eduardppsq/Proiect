%Numar de ordine 18
%Semnal triunghiular
%Perioada P = 40 s
%Durata semnalelor D = 18
%Rezolutie temporara adecvata
%Numar de coeficienti = 50

P = 40; 
D = 18; 
N = 50;
w0 = 2piP; %pulsatia unghiulara a semnalului
t_tr = 00.02D; %esantionarea semnalului original
x_tr = sawtooth((pi12)t_tr,0.5)2+0.5; %semnalul triunghiular original
t = 00.02P; %esantionarea semnalului modificat
x = zeros(1,length(t)); %initializare a semnalului modificat cu valori nule
x(t=D) = x_tr; %modificam valorile nule cu valori din semnalul original
                %unde avem valori din t = durata semnalului 
figure(1);
plot(t,x),title('x(t)(linie solida) si reconstructia folosind N coeficienti (linie punctata)'); %afisare x(t)
hold on;


for k = -NN %k este variabila dupa care se realizeaza suma
    x_t = x_tr; %x_t e semnalul realizat dupa formula SF data
    x_t = x_t . exp(-1ikw0t_tr); %inmultire intre doua matrice element cu element
    X(k+N+1) = 0; %initializare cu valoare nula
    for i = 1length(t_tr)-1
        X(k+N+1) = X(k+N+1) + (t_tr(i+1)-t_tr(i))  (x_t(i)+x_t(i+1))2; %reconstructia folosind coeficientii
    end
end

for i = 1length(t) %i este variabila dupa care se realizeaza suma
    x_finit(i) = 0; %initializare cu valoare nula
    for k=-NN
        x_finit(i) = x_finit(i) + (1P)  X(k+51)  exp(1ikw0t(i));  %reconstructia folosind coeficientii
    end
end
plot(t,x_finit,'--'); %afisare reconstructie semnal folosind cei N coeficienti

figure(2);
w=-50w0w050w0; %w este vectorul ce ne va permite afisarea spectrului functiei
stem(w(2pi),abs(X)),title('Spectrul lui x(t)'); %afisarea spectrului

%Conform cursului de SS, teoria seriilor Fourier (trigonometrica, armonica si complexa) ne spune
%ca orice semnal periodic poate fi aproximat printr-o suma infinita de sinusuri
%si cosinusuri de diferite frecvente, fiecare ponderat cu un anumit coeficient. 
%Acesti coeficienti reprezinta practic spectrul (amplitudinea pentru anumite frecvente).
%Semnalul reconstruit foloseste un numar finit de termeni(N=50 in tema) si se apropie ca
%forma de semnalul original, insa prezinta o marja de eroare. Cu cat marim
%numarul de coeficienti ai SF, aceasta marja de eroare va fi din ce in ce mai
%mica. In plus se observa faptul ca semnalul poate fi aproximat printr-o
%suma de sinusoide, variatiile semnalului prezentand un caracter sinusoidal.
