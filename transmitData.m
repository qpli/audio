function [ sendData ] = transmitData( time,fs )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n=time*fs;
A=[1,-1];

for i=1:n
  sendData(i) = A(ceil(rand*2));    
end

%��ͨ�˲���    ����17000-18000Hz���ź�
%  hd = design(fdesign.bandpass('N,F3dB1,F3dB2',6,17000,18000,44100),'butter')
% y = filter(hd,modu_sender);


end

