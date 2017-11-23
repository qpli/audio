clc
clear

fs=44100; %采样频率
T=10;  %时间长度  单位：秒
n=fs*T;   %采样点数
f=17500;    % 声音频率
t=linspace(0,T,fs*T);   % t为音长
c=sin(2*pi*f*t);


WaveBit=16;
ChannelNumber=2;

% myrecorder=audiorecorder(fs,WaveBit,ChannelNumber);
% get(myrecorder)
% WAVWRITE(GETAUDIODATA(myrecorder),fs,WaveBit,'test'); 
% matlabpool local 2;

sound(c,fs,16);
recObj=audiorecorder(44100,16,2);
disp('Start speaking.')
recordblocking(recObj,T);
disp('End of Recording.');


myRecording=getaudiodata(recObj);

figure
subplot(2,2,1)
plot(myRecording(:,2));
title('录音原始信号')


%plot(c(1:200))
%%%-------开始fft-----------------------------------------
x=myRecording(:,2);
N=length(x);
y1=fft(x,N);
ff=fs*(0:N/2-1)/N;
subplot(2,2,2)
plot(ff,abs(y1(1:N/2)))
title('录音数据FFT')
%%%----------结束fft-------------------------------------------
subplot(2,2,3)
plot(c);
title('播放原始信号')

x1=c;
N1=length(x1);
y11=fft(x1,N1);
ff1=fs*(0:N1/2-1)/N1;
subplot(2,2,4)
plot(ff1,abs(y11(1:N1/2)))
title('播放信号FFT');
% y=sin(2*pi*f*T*linspace(0,1,n+1));
% sound(y,fs)
 wavwrite(myRecording,44100,16,'sound17.5KHz.wav')
 
 [y,fs,nbits]= wavread('sound17.5KHz.wav');
 sound(y,44100,16)
%sound(c,fs)