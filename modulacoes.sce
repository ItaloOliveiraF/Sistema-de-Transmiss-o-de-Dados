function [t,b]=bask(eq)
    t = linspace(0,(98282/264600)*100,length(eq)*100);
    f=40*10**3; 
    for n=1:length(t)
        b(n)=cos(2*%pi*f*t(n))*eq(ceil(n/100));
    end
endfunction

function [t,bf]=bfsk(eq)
    t = linspace(0,(98282/264600)*100,length(eq)*100);
    f=15*10**3; 
    for n=1:length(t)
        bf(n)=cos(2*%pi*f*t(n)*(eq(ceil(n/100))*2+1));
    end
endfunction

function [t,bp]=bpsk(eq)
    t = linspace(0,(98282/264600)*100,length(eq)*100);
    fase=%pi
    f=30*10**3; 
    for n=1:length(t)
        bp(n)=cos(2*%pi*f*t(n)+eq(ceil(n/100))*fase);
    end
endfunction
