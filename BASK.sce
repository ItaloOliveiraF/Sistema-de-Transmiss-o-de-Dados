clear
clc

load('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\sinaisAnaPCM.dat', 'sinal_amostrado_ana', 'sinal_quantizado_ana','biblioteca_ana','palavra_pcm_ana')
exec('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\STD cod lin e TDM\plot_legivel.sce')

t=linspace(0,98281/264600,98281)

[l,c]=size(palavra_pcm_ana)

palavra_pcm_ana_linear=palavra_pcm_ana(:,1)'
for i=2:c
    palavra_pcm_ana_linear = [palavra_pcm_ana_linear palavra_pcm_ana(:,i)']
end

Eb=sum(palavra_pcm_ana_linear)/length(palavra_pcm_ana_linear)

for i=1:length(palavra_pcm_ana_linear)
    if(palavra_pcm_ana_linear)==1
        b(i)=sqrt(Eb)
    end
    if(palavra_pcm_ana_linear)==1
        b(i)=0
    end
end

c