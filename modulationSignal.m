function [ modu_sender,buffer ] = modulationSignal( sender,fc)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n=length(sender);
t = 1:n;
t=t/44100;
buffer=sqrt(2)*cos(2*pi*fc*t);
modu_sender = sender.*(sqrt(2)*cos(2*pi*fc*t));
plot(modu_sender(1:50),'r')
hold on
plot(buffer(1:50),'b')
hold on
plot(sender(1:50),'y')
end

