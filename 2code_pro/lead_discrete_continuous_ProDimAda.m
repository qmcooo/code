function lead_discrete_continuous_ProDimAda
diary('ex1_miss1.mat')

'---------lead_discrete_continuous_ProDimAda-----'

num=[100];
% b=[8:12]*0.15;
% a=[0 0.2 0.4 0.6 0.8 1.0];
% a=0.5*[0 0.3 0.6 0.9 1.2 1.5];
a=0;
resu=zeros(length(a),4);
%lambdaw=0.05;
% lambdaw=5*num^(-2/(4+1));
% h=1.5*num^(-1/(4+1));

% lambdaw=0.6;
% h=0.1;
% % for ii=1:30

% lambdaw=6.6*num^(-2/(4+1))
% h=0.33*num^(-1/(4+1))

lambdaw=0.6;
h=0.1;

% flag=0;
% for a1=0.55:0.02:0.65
%     for a2=0.05:0.02:0.15
%         lambdaw=a1;
%         h=a2;
%         a1
%         a2

for i=1:length(a)
% for j=1:length(num)
     power=discrete_continuous_ProDimAda(num, a(i),lambdaw,h);
     resu(i,:)=power ;
% end
end
% % k(ii)=power(2)
%     if abs(resu(2)-0.05)<=2e-3
%         a11=a1;
%         a22=a2;
%         flag=1;
%         break;
%     end
%     end
%     if flag==1
%         break
%     end
%     end
% 
% a11
% a22
% % end
% % powers=mean(k)
all_resu=resu;
dlmwrite('ex1_miss1.txt',all_resu,'delimiter',' ','newline','pc') 