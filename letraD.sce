clear;
clc;
load('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\Sinais_STD\xa_3_1.sod')
sinal_mensagem_ana=x_a;
load('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\Sinais_STD\xa_23_1.sod')
sinal_mensagem_italo=x_a;
load('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\Sinais_STD\xa_28_1.sod')
sinal_mensagem_lara=x_a;
load('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\Sinais_STD\xa_30_1.sod')
sinal_mensagem_luiza=x_a;
exec('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\STD cod lin e TDM\amostragem_sinal.sce')
exec('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\STD cod lin e TDM\quantizacao_midrise.sce')
exec('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\STD cod lin e TDM\codificacao_pcm.sce')
exec('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\STD cod lin e TDM\plot_legivel.sce')

t=linspace(0,98281/264600,98281)

//amostragem do sinal mensagem de Ana:
sinal_amostrado_ana = amostragem_sinal(t,sinal_mensagem_ana,100/32200)'
sinal_quantizado_ana = quantizacao_midrise(sinal_amostrado_ana,floor(min(sinal_amostrado_ana)),ceil(max(sinal_amostrado_ana)),4)'

//amostragem do sinal mensagem de Italo:
sinal_amostrado_italo = amostragem_sinal(t,sinal_mensagem_italo,100/32200)'
sinal_quantizado_italo = quantizacao_midrise(sinal_amostrado_italo,floor(min(sinal_amostrado_italo)),ceil(max(sinal_amostrado_italo)),4)'

//amostragem do sinal mensagem de Lara:
sinal_amostrado_lara = amostragem_sinal(t,sinal_mensagem_lara,100/32200)'
sinal_quantizado_lara = quantizacao_midrise(sinal_amostrado_lara,floor(min(sinal_amostrado_lara)),ceil(max(sinal_amostrado_lara)),4)'

//amostragem do sinal mensagem de Luiza:
sinal_amostrado_luiza = amostragem_sinal(t,sinal_mensagem_luiza,100/32200)'
sinal_quantizado_luiza = quantizacao_midrise(sinal_amostrado_luiza,floor(min(sinal_amostrado_luiza)),ceil(max(sinal_amostrado_luiza)),4)'

//plot Sinal - plot Palavra - Ana Rute
plot_legivel(t,sinal_quantizado_ana,'Sinal Quantizado','Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_ana)) ceil(max(sinal_amostrado_ana))],3,1)
plot_legivel(t,sinal_amostrado_ana,'Sinal Amostrado','Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_ana)) ceil(max(sinal_amostrado_ana))],3,2)
plot_legivel(t,sinal_mensagem_ana,'Sinal Mensagem','Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_ana)) ceil(max(sinal_amostrado_ana))],3,3)
[biblioteca_ana,palavra_pcm_ana] = codificacao_pcm(sinal_quantizado_ana,floor(min(sinal_amostrado_ana)),ceil(max(sinal_amostrado_ana)),4);
plot_legivel(t,palavra_pcm_ana(2,:),'Bit 2','Tempo','Amplitude',[0 98281/264600 0 1],3,4)

save('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\sinaisAnaPCM.dat', 'sinal_amostrado_ana', 'sinal_quantizado_ana','biblioteca_ana','palavra_pcm_ana')

//plot Sinal - plot Palavra - Italo
//plot_legivel(t,[sinal_discretizado_italo; sinal_amostrado_italo; sinal_mensagem_italo],['Sinal Discretizado';'Sinal Amostrado'; 'Sinal Mensagem'],'Tempo','Amplitude',[0 98281/264600 floor(min(x_italo)) ceil(max(x_italo))],3,3)
//plot_legivel(t,sinal_discretizado_italo,'Sinal Discretizado','Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_italo)) ceil(max(sinal_amostrado_italo))],3,3);
//[biblioteca_italo,palavra_pcm_italo] = codificacao_pcm(sinal_discretizado_italo,floor(min(sinal_amostrado_italo)),ceil(max(sinal_amostrado_italo)),4);
//plot_legivel(t,palavra_pcm_italo,['Bit 1';'Bit 2'; 'Bit 3'; 'Bit 4'],'Tempo','Amplitude',[0 98281/264600 0 1],3,4)

//plot Sinal - plot Palavra - Lara
//plot_legivel(t,[sinal_discretizado_lara; sinal_amostrado_lara; sinal_mensagem_lara],['Sinal Discretizado';'Sinal Amostrado'; 'Sinal Mensagem'],'Tempo','Amplitude',[0 98281/264600 floor(min(x_lara)) ceil(max(x_lara))],3,5)
//plot_legivel(t,sinal_discretizado_lara,'Sinal Discretizado','Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_lara)) ceil(max(sinal_amostrado_lara))],3,5);
//[biblioteca_lara,palavra_pcm_lara] = codificacao_pcm(sinal_discretizado_lara,floor(min(sinal_amostrado_lara)),ceil(max(sinal_amostrado_lara)),4);
//plot_legivel(t,palavra_pcm_lara,['Bit 1';'Bit 2'; 'Bit 3'; 'Bit 4'],'Tempo','Amplitude',[0 98281/264600 0 1],3,6)

//plot Sinal - plot Palavra - Luiza
//plot_legivel(t,sinal_discretizado_luiza,'Sinal Discretizado','Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_luiza)) ceil(max(sinal_amostrado_luiza))],3,7);
//figure
//plot_legivel(t,sinal_amostrado_luiza,'Sinal Amostrado','Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_luiza)) ceil(max(sinal_amostrado_luiza))],3,7);
//figure
//plot_legivel(t,sinal_mensagem_luiza,'Sinal Mensagem','Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_luiza)) ceil(max(sinal_amostrado_luiza))],3,7);
//figure
//[biblioteca_luiza,palavra_pcm_luiza] = codificacao_pcm(sinal_discretizado_luiza,floor(min(sinal_amostrado_luiza)),ceil(max(sinal_amostrado_luiza)),4);
//plot_legivel(t,palavra_pcm_luiza(1,:),['Bit 1'],'Tempo','Amplitude',[0 98281/264600 0 1],3,8)

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
/*
[l,c]=size(palavra_pcm_ana)

for i=1:c
    palavra_retomada_bin_ana(i)=0
    palavra_retomada_bin_italo(i)=0
    palavra_retomada_bin_lara(i)=0
    palavra_retomada_bin_luiza(i)=0
    for j=1:l
        palavra_retomada_bin_ana(i)=palavra_retomada_bin_ana(i)+palavra_pcm_ana(j,i)*10^(l-j)
        palavra_retomada_bin_italo(i)=palavra_retomada_bin_italo(i)+palavra_pcm_italo(j,i)*10^(l-j)
        palavra_retomada_bin_lara(i)=palavra_retomada_bin_lara(i)+palavra_pcm_lara(j,i)*10^(l-j)
        palavra_retomada_bin_luiza(i)=palavra_retomada_bin_luiza(i)+palavra_pcm_luiza(j,i)*10^(l-j)
    end
end

palavra_retomada_bin_ana=string(palavra_retomada_bin_ana)
palavra_retomada_bin_italo=string(palavra_retomada_bin_italo)
palavra_retomada_bin_lara=string(palavra_retomada_bin_lara)
palavra_retomada_bin_luiza=string(palavra_retomada_bin_luiza)

palavra_retomada_dec_ana=bin2dec(palavra_retomada_bin_ana)
palavra_retomada_dec_italo=bin2dec(palavra_retomada_bin_italo)
palavra_retomada_dec_lara=bin2dec(palavra_retomada_bin_lara)
palavra_retomada_dec_luiza=bin2dec(palavra_retomada_bin_luiza)

for i=1:length(palavra_retomada_dec_ana)
    sinal_quant_ana(i)=biblioteca_ana(palavra_retomada_dec_ana(i)+1)
    sinal_quant_italo(i)=biblioteca_italo(palavra_retomada_dec_italo(i)+1)
    sinal_quant_lara(i)=biblioteca_lara(palavra_retomada_dec_lara(i)+1)
    sinal_quant_luiza(i)=biblioteca_luiza(palavra_retomada_dec_luiza(i)+1)
end

plot_legivel(t,sinal_quant_ana,['Sinal Quantizado'],'Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_ana)) ceil(max(sinal_amostrado_ana))],3,9)
plot_legivel(t,sinal_quant_italo,['Sinal Quantizado'],'Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_italo)) ceil(max(sinal_amostrado_italo))],3,10)
plot_legivel(t,sinal_quant_lara,['Sinal Quantizado'],'Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_lara)) ceil(max(sinal_amostrado_lara))],3,11)
plot_legivel(t,sinal_quant_luiza,['Sinal Quantizado'],'Tempo','Amplitude',[0 98281/264600 floor(min(sinal_amostrado_luiza)) ceil(max(sinal_amostrado_luiza))],3,12)
