% clc
% clear
cd('C:\Users\lipei\Desktop\��Ƶ��λ\matlab\����');
%cd('C:\Users\lipei\Desktop\����λ\����λʵ������\��AP\3AP��������\ͼ���\wifi');
files=dir('*.txt');
fileNum=size(files,1);
Na=fileNum;
for j=1:fileNum
    ex{j}=importdata(files(j).name);
   
%    MS{i}=struct;
   % W{i}.data=regexp(ex,' ','split');
  
end
cd('C:\Users\lipei\Desktop\��Ƶ��λ\matlab\strata\');
