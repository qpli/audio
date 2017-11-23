function [ M,h,W ] = ls_channel( se,a,L,P )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n=length(a);
count = 1;
for i=1153:26:n-26
   % M{count}(1,1) = a(L);
    for j = 1:P
        m{count}(j,1)=a(i+L+j-2);
        for k = 1:L
          M{count}(j,k) = a(i+L+j-1-k);  
        end
    end
    y=se(i+L-1:i+L+P-2);
    h{count} = (inv((M{count}'*M{count}))*M{count}')*y';
    count=count+1;
end

for i=1:length(h)
    for j=1:L
        W{j}(i)=h{i}(j);
    end
end



end

