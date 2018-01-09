clc
clear
load('q1_2014.mat')
load('q1_2015.mat')
load('q1_2016.mat')
load('q1_2017.mat')
figure(1)
plot(q1_2014(:,2),'r')
hold on
plot(q1_2015(:,2),'g')
plot(q1_2016(:,2),'b')
plot(q1_2017(:,2),'k')
title('2014~2017第一季度销售量')
figure(2)
plot(q1_2014(:,2)/sum(q1_2014(:,2)),'r')
hold on
plot(q1_2015(:,2)/sum(q1_2015(:,2)),'g')
plot(q1_2016(:,2)/sum(q1_2016(:,2)),'b')
plot(q1_2017(:,2)/sum(q1_2017(:,2)),'k')
title('2014~2017第一季度归一销售量')
figure(3)
subplot(411)
plot(q1_2014(:,2)/sum(q1_2014(:,2)),'r')
hold on
subplot(412)
plot(q1_2015(:,2)/sum(q1_2015(:,2)),'g')
subplot(413)
plot(q1_2016(:,2)/sum(q1_2016(:,2)),'b')
subplot(414)
plot(q1_2017(:,2)/sum(q1_2017(:,2)),'k')
title('2014~2017第一季度销售量')
%%%%%%%%%%%%%%%%%%%%%%%%
%  第一季度周销售曲线   %
%%%%%%%%%%%%%%%%%%%%%%%%
q1_2014_w=q1_2014(6:89,2);
q1_2015_w=q1_2015(5:88,2);
q1_2016_w=q1_2016(4:87,2);
q1_2017_w=q1_2017(2:85,2);
q1_w=[q1_2014_w,q1_2015_w,q1_2016_w,q1_2017_w];
for i=1:12
    q1_week(i,:)=sum(q1_w((i-1)*7+1:i*7,:));   
end
r_q1_week(:,1)=q1_week(:,1)/sum(q1_week(:,1));
r_q1_week(:,2)=q1_week(:,2)/sum(q1_week(:,2));
r_q1_week(:,3)=q1_week(:,3)/sum(q1_week(:,3));
r_q1_week(:,4)=q1_week(:,4)/sum(q1_week(:,4));
