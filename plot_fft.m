function [ mr ] = plot_fft( x,fs )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
N=length(x)

f=(1:N).*fs/(N);
mr=abs(fft(x,N));

plot(f(1:N/2),mr(1:N/2)*2/N)
title('Ô­Ê¼ÐÅºÅÆµÆ×');


end

