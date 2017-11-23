function [ sendData ] = transmitData( time,fs )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
n=time*fs;
A=[1,-1];

for i=1:n
  sendData(i) = A(ceil(rand*2));    
end

%带通滤波器    留下17000-18000Hz的信号
%  hd = design(fdesign.bandpass('N,F3dB1,F3dB2',6,17000,18000,44100),'butter')
% y = filter(hd,modu_sender);


end

