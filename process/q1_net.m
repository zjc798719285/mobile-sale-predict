clc
clear
load('q1_train3.mat')
load('q1_2017.mat')
y_2017=q1_2017(:,2);
input=q1_train3(1:271,2:end)';
target=q1_train3(1:271,1)';
test_in=q1_train3(272:end,2:end)';
test_tar=q1_train3(272:end,1)';
net1=newrb(input,target,0,5,50,20);
net1.trainFcn='trainlm';                 
net1.trainParam.epochs =50;         
net1.trainParam.goal = 1e-6;         
[net1, tr]=trainlm(net1,input,target);
figure(1)
pre_input=sim(net1,input);
plot(pre_input)
hold on
plot(target,'r')
title('ÑµÁ·¼¯')
figure(2)
pre_test=sim(net1, test_in);
plot(test_tar)
hold on
plot(pre_test,'r')
plot(pre_test-test_tar,'g')
title('²âÊÔ¼¯')
figure(3)
subplot(211)
plot(y_2017)
subplot(212)
plot(y_2017'-pre_test)

