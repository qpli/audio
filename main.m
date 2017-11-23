clc
clear
time = 10;
fs=44100;
fc = 17500;

sendData  = transmitData( time,fs );

[ modu_sender,buffer ] = modulationSignal( sendData,fc);
hd = design(fdesign.bandpass('N,F3dB1,F3dB2',6,17000,18000,44100),'butter');
 y = filter(hd,modu_sender);
 