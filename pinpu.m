function [ Y ] = pinpu( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% f0=20;
% f1=15;
% f2=5;
N=size(x,2);
Fs=44100;
t=0:1/Fs:1;
%plot(t,x);
df=Fs/(N-1);
f=(0:N-1)*df;
Y=fft(x(1:N))/N*2;
figure(2)
plot(f(1:N/2),abs(Y(1:N/2)));
%XK=(fft(x,N));
% f=(0:N/2)*Fs/N;
% XK(1)=XK(1)/N;
% XK(2:(N/2+1))=XK(2:(N/2+1))*2/N;
% subplot(311),stem(f,XK(1:(N/2+1)));
% xlim([0 Fs/2]);
% grid on;
% xlabel('f - Hz');
% ylabel('|X(f)|');
% 




% XK2=fftshift(XK);
% f=(0:N-1)*Fs/N-Fs/2;
% hold on;
% plot(f,abs(XK),'r')
% plot(f,abs(XK2),'b')

end

