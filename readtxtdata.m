% clc
% clear
cd('C:\Users\lipei\Desktop\音频定位\matlab\数据');
%cd('C:\Users\lipei\Desktop\反定位\反定位实验数据\多AP\3AP分类数据\图书馆\wifi');
files=dir('*.txt');
fileNum=size(files,1);
Na=fileNum;
for j=1:fileNum
    ex{j}=importdata(files(j).name);
   
%    MS{i}=struct;
   % W{i}.data=regexp(ex,' ','split');
  
end
cd('C:\Users\lipei\Desktop\音频定位\matlab\strata\');
