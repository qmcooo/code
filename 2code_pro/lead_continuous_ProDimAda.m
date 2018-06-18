function lead_continuous_ProDimAda
diary('ex1_miss1.mat')

'---------lead_continuous_ProDimAda-----'

% p1=8
% p1=3
p1=4
% num=50
num=[100]
a=[0 0.2 0.4 0.6 0.8 1.0];
% a=[0 0.03 0.05 0.08 0.1 0.2 0.35 0.5 1 2];
% a=[0 0.3 0.6 0.9 1.2 1.5];
% a=[0 0.1 0.2 0.3 0.4 0.5];
% a=0;
resu=zeros(length(a),4);
lambdaw=0.34;
h=0.48;

for i=1:length(a)                                   
     power=continuous_ProDimAda(num, a(i),lambdaw,h,p1);
     resu(i,:)=power 
end


all_resu=resu;
dlmwrite('ex1_miss1.txt',all_resu,'delimiter',' ','newline','pc') 