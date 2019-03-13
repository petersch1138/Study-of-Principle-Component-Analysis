clear all; close all; clc;

% Peter Schultz
% This script is responsible for loading the data, calling the main
% algorithm function, and plotting the relevant metrics

%%
c1=double(cell2mat(struct2cell(load('data\cam1_1.mat'))));
c2=double(cell2mat(struct2cell(load('data\cam2_1.mat'))));
c3=double(cell2mat(struct2cell(load('data\cam3_1.mat'))));
[u1,s1,v1,lambda1,X1,Y1,m1,n1] = main(c1,c2,c3);
%%
figure(1)
semilogy(lambda1); 
title 'Eigen Values - Case 1'

figure(2)
plot(Y1(1,:)); hold on;
plot(Y1(2,:));
plot(Y1(3,:));
plot(Y1(4,:));
plot(Y1(5,:));
plot(Y1(6,:));
title 'Case 1'
xlabel 'Frame'; ylabel 'Energy';
%%
c1=double(cell2mat(struct2cell(load('data\cam1_2.mat'))));
c2=double(cell2mat(struct2cell(load('data\cam2_2.mat'))));
c3=double(cell2mat(struct2cell(load('data\cam3_2.mat'))));
[u2,s2,v2,lambda2,X2,Y2,m2,n2] = main(c1,c2,c3);
%%
figure(3)
semilogy(lambda2); 
title 'Eigen Values - Case 2'

figure(4)
plot(Y2(1,:)); hold on;
plot(Y2(2,:));
plot(Y2(3,:));
plot(Y2(4,:));
plot(Y2(5,:));
plot(Y2(6,:));
title 'Case 2'
xlabel 'Frame'; ylabel 'Energy';

%%
c1=double(cell2mat(struct2cell(load('data\cam1_3.mat'))));
c2=double(cell2mat(struct2cell(load('data\cam2_3.mat'))));
c3=double(cell2mat(struct2cell(load('data\cam3_3.mat'))));
[u3,s3,v3,lambda3,X3,Y3,m3,n3] = main(c1,c2,c3);
%%
figure(5)
semilogy(lambda3); 
title 'Eigen Values - Case 3'

figure(6)
plot(Y3(1,:)); hold on;
plot(Y3(2,:));
plot(Y3(3,:));
plot(Y3(4,:));
plot(Y3(5,:));
plot(Y3(6,:));
title 'Case 3'
xlabel 'Frame'; ylabel 'Energy';

%%
c1=double(cell2mat(struct2cell(load('data\cam1_4.mat'))));
c2=double(cell2mat(struct2cell(load('data\cam2_4.mat'))));
c3=double(cell2mat(struct2cell(load('data\cam3_4.mat'))));
[u4,s4,v4,lambda4,X4,Y4,m4,n4] = main(c1,c2,c3);
%%
figure(7)
semilogy(lambda4); 
title 'Eigen Values - Case 4'

figure(8)
plot(Y4(1,:)); hold on;
plot(Y4(2,:));
plot(Y4(3,:));
plot(Y4(4,:));
plot(Y4(5,:));
plot(Y4(6,:));
title 'Case 4'
xlabel 'Frame'; ylabel 'Energy';


%%

semilogy(lambda1,'Linewidth',2); hold on;
semilogy(lambda2,'Linewidth',2);
semilogy(lambda3,'Linewidth',2);
semilogy(lambda4,'Linewidth',2);
title 'Eigen Values'
legend('Case 1','Case 2','Case 3','Case 4');