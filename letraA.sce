clear;
clc;

load('C:\Users\italo\OneDrive\Documentos\UFRN\std\Sinais_STD\xa_3_1.sod')
x_ana=x_a;
load('C:\Users\italo\OneDrive\Documentos\UFRN\std\Sinais_STD\xa_23_1.sod')
x_italo=x_a;
load('C:\Users\italo\OneDrive\Documentos\UFRN\std\Sinais_STD\xa_28_1.sod')
x_lara=x_a;
load('C:\Users\italo\OneDrive\Documentos\UFRN\std\Sinais_STD\xa_30_1.sod')
x_luiza=x_a;

///////////////////////////////////////////////

X_ana=fft(x_ana);
for i=1:length(X_ana)/2
    X_anaMetade(i)=X_ana(i)
end

X_italo=fft(x_italo);
for i=1:length(X_ana)/2
    X_italoMetade(i)=X_italo(i)
end

X_lara=fft(x_lara);
for i=1:length(X_ana)/2
    X_laraMetade(i)=X_lara(i)
end

X_luiza=fft(x_luiza);
for i=1:length(X_ana)/2
    X_luizaMetade(i)=X_luiza(i)
end

////////////////////////////////////////////
//plotagem do expectro de frequencia
////////////////////////////////////////////

f=linspace(0,0.5*264600,floor(length(x_ana)/2));

figure();
plot(f,X_anaMetade);
figure();
plot(f,X_italoMetade);
figure();
plot(f,X_laraMetade);
figure();
plot(f,X_luizaMetade);
////////////////////////////////////////////
//Cálculos da energia
////////////////////////////////////////////
energia_ana=sum(abs(X_ana).^2)
energia_italo=sum(abs(X_italo).^2)
energia_lara=sum(abs(X_lara).^2)
energia_luiza=sum(abs(X_luiza).^2)

//exec('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\letraB.sce')
