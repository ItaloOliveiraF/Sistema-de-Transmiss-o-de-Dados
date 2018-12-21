clear
clc

load('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\sinaisAnaPCM.dat', 't', 'sinal_mensagem_ana','sinal_amostrado_ana', 'sinal_quantizado_ana','biblioteca_ana','palavra_pcm_ana')
exec('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\auxiliares\modulacoes.sce')

[l,c]=size(palavra_pcm_ana)
palavra_pcm_linear_ana=palavra_pcm_ana(:,1)'
for i=2:c
    palavra_pcm_linear_ana = [palavra_pcm_linear_ana palavra_pcm_ana(:,i)']
end

b=palavra_pcm_linear_ana

[t1,s1]=bask(b)
[t2,s2]=bpsk(b)
[t3,s3]=bfsk(b)

figure()
plot(t1(1:2000),s1(1:2000),'LineWidth',3)
ax=get('current_axes')
ax.font_size = 5
ax.x_label.text = 'Tempo'
ax.x_label.font_size = 5
ax.y_label.text = 'Amplitude'
ax.y_label.font_size = 5
h1.font_size = 4;

figure()
plot(t2(1:2000),s2(1:2000),'LineWidth',3)
ax=get('current_axes')
ax.font_size = 5
ax.x_label.text = 'Tempo'
ax.x_label.font_size = 5
ax.y_label.text = 'Amplitude'
ax.y_label.font_size = 5
h1.font_size = 4;

figure()
plot(t3(1:2000),s3(1:2000),'LineWidth',3)
ax=get('current_axes')
ax.font_size = 5
ax.x_label.text = 'Tempo'
ax.x_label.font_size = 5
ax.y_label.text = 'Amplitude'
ax.y_label.font_size = 5
h1.font_size = 4;
