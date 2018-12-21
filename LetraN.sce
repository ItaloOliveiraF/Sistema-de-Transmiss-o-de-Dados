clear
clc

load('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\sinaisAnaDelta.dat', 's_q_ana')
exec('C:\Users\italo\OneDrive\Documentos\UFRN\std\projeto2\auxiliares\modulacoes.sce')

b=(s_q_ana+1)/2

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
