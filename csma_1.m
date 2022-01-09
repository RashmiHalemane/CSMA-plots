% matlab code to plot the throughput vs G praph for Aloha, slotted aloha, Non-persisient CSMA, 1 persistent CSMA etc
clc;
clear all;
close all;
G=linspace(0,9,100);

%throughput of pure Aloha
Pure_aloha_s=G.*(exp(-2*G))
%throughput of slotted aloha
Slotted_aloha_s=G.*(exp(-G))
%throughput of non peristent CSMA
Non_perisient_s=G./(1+G)
%throughput of 1-persistent CSMA
one_per_s=(G+G.^2)./(1+(G.*exp(G)))

%throughtput of other related to 1-persistent CSMA
pers_0o01_s=(G+0.01*G.^2)./(1+(G.*exp(0.01*G)))
pers_0o5_s=(G+0.5*G.^2)./(1+(G.*exp(0.5*G)))
pers_0o001_s=(G+0.001*G.^2)./(1+(G.*exp(0.001*G)))

%plots
plot(G, Pure_aloha_s)
hold on
plot(G,Slotted_aloha_s )
plot(G, Non_perisient_s)
plot(G,one_per_s)
plot(G,pers_0o01_s)
plot(G,pers_0o5_s)
plot(G,pers_0o001_s)

%labeling
legend('Pure Aloha','Slotted Aloha','Non-Peristent','1-Persistent CSMA','0.01','0.5','0.001')
xlabel('G-attempts per packet time')
ylabel('S throughput per packet time')

