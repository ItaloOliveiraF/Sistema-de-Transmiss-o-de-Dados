//////////////////////////////
//Sinal de Ana
//////////////////////////////

energia_anaMetade = sum(abs(X_anaMetade).^2);
largBanda = 0;
for(i = 1 : length(X_anaMetade))
    largBanda(i) = X_anaMetade(i);
    energia_anaP = sum(abs(largBanda).^2);
    energia_relativa(i) = energia_anaP/energia_anaMetade;
end
plot(f,energia_relativa)

//////////////////////////////
//Sinal de Italo
//////////////////////////////

energia_italoMetade = sum(abs(X_italoMetade).^2);
largBanda = 0;
for(i = 1 : length(X_italoMetade))
    largBanda(i) = X_italoMetade(i);
    energia_italoP = sum(abs(largBanda).^2);
    energia_relativa(i) = energia_italoP/energia_italoMetade;
end

plot(f,energia_relativa)

//////////////////////////////
//Sinal de Lara
//////////////////////////////

energia_laraMetade = sum(abs(X_laraMetade).^2);
largBanda = 0;
for(i = 1:length(X_laraMetade))
    largBanda(i) = X_laraMetade(i);
    energia_laraP = sum(abs(largBanda).^2);
    energia_relativa(i) = energia_laraP/energia_laraMetade;
end

plot(f,energia_relativa)

//////////////////////////////
//Sinal de Luiza
//////////////////////////////

energia_luizaMetade = sum(abs(X_luizaMetade).^2);
largBanda = 0;
for(i= 1 : length(X_luizaMetade))
    largBanda(i) = X_luizaMetade(i);
    energia_luizaP = sum(abs(largBanda).^2);
    energia_relativa(i) = energia_luizaP/energia_luizaMetade;
end

plot(f,energia_relativa)
