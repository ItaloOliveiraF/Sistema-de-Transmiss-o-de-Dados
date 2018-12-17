clear
clc

load('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\sinaisAnaPCM.dat', 't', 'sinal_mensagem_ana','sinal_amostrado_ana', 'sinal_quantizado_ana','biblioteca_ana','palavra_pcm_ana')
exec('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\STD cod lin e TDM\plot_legivel.sce')

t=linspace(0,98281/264600,98281)

[l,c]=size(palavra_pcm_ana)

palavra_pcm_linear_ana=palavra_pcm_ana(:,1)'
for i=2:c
    palavra_pcm_linear_ana = [palavra_pcm_linear_ana palavra_pcm_ana(:,i)']
end

disp("IMPRIME1")

/*Eb=sum(palavra_pcm_ana_linear)/length(palavra_pcm_ana_linear)

for i=1:length(palavra_pcm_ana_linear)
    if(palavra_pcm_ana_linear)==1
        b(i)=sqrt(Eb)
    end
    if(palavra_pcm_ana_linear)==1
        b(i)=0
    end
end
*/

c=palavra_pcm_linear_ana.*cos(2*%pi*linspace(t(1),t(length(t)),length(palavra_pcm_linear_ana))*10e9)
C=fft(c);
H=[ones(1,25000) zeros(1,length(palavra_pcm_linear_ana)-25000)];
C_filtrado=C.*H
c_filtrado=ifft(C_filtrado)
t2=linspace(t(1),t(length(t)),length(palavra_pcm_linear_ana))
plot(t2,c_filtrado)
figure()

Eb=sum(palavra_pcm_linear_ana.^2)

for i=1:length(palavra_pcm_linear_ana)
    if(palavra_pcm_linear_ana(i)==1)
        b(i)=sqrt(Eb)
    else
        b(i)=0
    end
end

s=b'.*c_filtrado

plot(t2,s)
