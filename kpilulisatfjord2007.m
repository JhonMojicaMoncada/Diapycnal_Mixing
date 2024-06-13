%%%%%%%%%%%%%% CSLC NYUAD  %%%%%%%%%%%%%
%%%%%Jhon Fredy Mojica Moncada // 2017 // %% kp S Ri Arctic XCP-XCTD
%%%% to save file XCTD = call the file, then dep=[X08_Y13_data.Depth];
%XCTD_1 = [X08_Y13_data.Depth; X08_Y13_data.Temperature;...]';
%save ('XCTD_2013_x08_y13.txt', 'XCTD_1','-append','-ASCII') %save DISS_1.txt DISS_1 -ASCII;
%t = datetime(7.353957680324074e+05,'ConvertFrom','datenum') %date
close, all  clear
%%%% OCEAN MEAN BUOYANCY N0=0.0052; % reference buoyancy s^-1
N0 = 0.0052;%%0.0052; %% s-1 reference buoyancy (gregg, 1989)
f=0.000129;%%% 2*0.00007292*sen(62) %coriolis s^-1 

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 1m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD1 = fopen('xctd-1m.txt'); 
x1 = fscanf(XCTD1,'%f %f %f %f %f %f %f %f',[8 inf]);
dept1 = x1(1,:);
temp1 = x1(2,:);
sali1 = x1(3,:);
oxig1 = x1(4,:);
tpot1 = x1(5,:);
buoy1 = x1(6,:);
tang1 = x1(7,:);
dens1 = x1(8,:);

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 2m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD2 = fopen('xctd-2m.txt'); 
x2 = fscanf(XCTD2,'%f %f %f %f %f %f %f %f',[8 inf]);
dept2 = x2(1,:);
temp2 = x2(2,:);
sali2 = x2(3,:);
oxig2 = x2(4,:);
tpot2 = x2(5,:);
buoy2 = x2(6,:);
tang2 = x2(7,:);
dens2 = x2(8,:);

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 3m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD3 = fopen('xctd-3m.txt'); 
x3 = fscanf(XCTD3,'%f %f %f %f %f %f %f %f',[8 inf]);
dept3 = x3(1,:);
temp3 = x3(2,:);
sali3 = x3(3,:);
oxig3 = x3(4,:);
tpot3 = x3(5,:);
buoy3 = x3(6,:);
tang3 = x3(7,:);
dens3 = x3(8,:);

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 4m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD4 = fopen('xctd-4m.txt'); 
x4 = fscanf(XCTD4,'%f %f %f %f %f %f %f %f',[8 inf]);
dept4 = x4(1,:);
temp4 = x4(2,:);
sali4 = x4(3,:);
oxig4 = x4(4,:);
tpot4 = x4(5,:);
buoy4 = x4(6,:);
tang4 = x4(7,:);
dens4 = x4(8,:);

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 5m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD5 = fopen('xctd-5m.txt'); 
x5 = fscanf(XCTD5,'%f %f %f %f %f %f %f %f',[8 inf]);
dept5 = x5(1,:);
temp5 = x5(2,:);
sali5 = x5(3,:);
oxig5 = x5(4,:);
tpot5 = x5(5,:);
buoy5 = x5(6,:);
tang5 = x5(7,:);
dens5 = x5(8,:);

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 6m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD6 = fopen('xctd-6m.txt'); 
x6 = fscanf(XCTD6,'%f %f %f %f %f %f %f %f',[8 inf]);
dept6 = x6(1,:);
temp6 = x6(2,:);
sali6 = x6(3,:);
oxig6 = x6(4,:);
tpot6 = x6(5,:);
buoy6 = x6(6,:);
tang6 = x6(7,:);
dens6 = x6(8,:);

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 7m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD7 = fopen('xctd-7m.txt'); 
x7 = fscanf(XCTD7,'%f %f %f %f %f %f %f %f',[8 inf]);
dept7 = x7(1,:);
temp7 = x7(2,:);
sali7 = x7(3,:);
oxig7 = x7(4,:);
tpot7 = x7(5,:);
buoy7 = x7(6,:);
tang7 = x7(7,:);
dens7 = x7(8,:);

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 8m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD8 = fopen('xctd-8m.txt'); 
x8 = fscanf(XCTD8,'%f %f %f %f %f %f %f %f',[8 inf]);
dept8 = x8(1,:);
temp8 = x8(2,:);
sali8 = x8(3,:);
oxig8 = x8(4,:);
tpot8 = x8(5,:);
buoy8 = x8(6,:);
tang8 = x8(7,:);
dens8 = x8(8,:);

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 9m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD9 = fopen('xctd-9m.txt'); 
x9 = fscanf(XCTD9,'%f %f %f %f %f %f %f %f',[8 inf]);
dept9 = x9(1,:);
temp9 = x9(2,:);
sali9 = x9(3,:);
oxig9 = x9(4,:);
tpot9 = x9(5,:);
buoy9 = x9(6,:);
tang9 = x9(7,:);
dens9 = x9(8,:);

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 10m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD10 = fopen('xctd-10m.txt'); 
x10 = fscanf(XCTD10,'%f %f %f %f %f %f %f %f',[8 inf]);
dept10 = x10(1,:);
temp10 = x10(2,:);
sali10 = x10(3,:);
oxig10 = x10(4,:);
tpot10 = x10(5,:);
buoy10 = x10(6,:);
tang10 = x10(7,:);
dens10 = x10(8,:);

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 11m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD11 = fopen('xctd-11m.txt'); 
x11 = fscanf(XCTD11,'%f %f %f %f %f %f %f %f',[8 inf]);
dept11 = x11(1,:);
temp11 = x11(2,:);
sali11 = x11(3,:);
oxig11 = x11(4,:);
tpot11 = x11(5,:);
buoy11 = x11(6,:);
tang11 = x11(7,:);
dens11 = x11(8,:);

%%%%%%%%%%%%%%%%%%%%%%%% XCTD 12m data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
XCTD12 = fopen('xctd-12m.txt'); 
x12 = fscanf(XCTD12,'%f %f %f %f %f %f %f %f',[8 inf]);
dept12 = x12(1,:);
temp12 = x12(2,:);
sali12 = x12(3,:);
oxig12 = x12(4,:);
tpot12 = x12(5,:);
buoy12 = x12(6,:);
tang12 = x12(7,:);
dens12 = x12(8,:);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% XCTD %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% temperature %%%%%%%%%%%%%
figure (1),
plot(temp1,dept1,'-k','LineWidth',2);
hold on,
plot(temp2,dept2,'-b','LineWidth',2);
plot(temp3,dept3,'-r','LineWidth',2);
plot(temp4,dept4,'-c','LineWidth',2);
plot(temp5,dept5,'-g','LineWidth',2);
plot(temp6,dept6,'-y','LineWidth',2);
plot(temp7,dept7,'-m','LineWidth',2);
plot(temp8,dept8,'-.k','LineWidth',2);
%plot(temp9,dept9,'-.b','LineWidth',2);
plot(temp10,dept10,'-.r','LineWidth',2);
plot(temp11,dept11,'-.c','LineWidth',2);
plot(temp12,dept12,'-.g','LineWidth',2);
hold off,
%axis ([-2 4 2 700]) %tight
xlab = xlabel('Temperature (ºc)');
ylab = ylabel('Depth (m)');
set([xlab,ylab],'FontName','Arial');%Helvetica
set([xlab,ylab],'FontSize',32);
set(gca,'FontSize',24,'TickDir','out'); %set(gca,'TickDir','out')
set(gca,'yDir','reverse');
legend('XCTD1','XCTD2','XCTD3','XCTD4','XCTD5','XCTD6','XCTD7','XCTD8','XCTD10','XCTD11','XCTD12')
set(legend,'FontSize',18);

%%%%%%%%%%%%%%%%%%%%%%%% salinity %%%%%%%%%%%%%
figure (2),
plot(sali1,dept1,'-k','LineWidth',2);
hold on,
plot(sali2,dept2,'-b','LineWidth',2);
plot(sali3,dept3,'-r','LineWidth',2);
plot(sali4,dept4,'-c','LineWidth',2);
plot(sali5,dept5,'-g','LineWidth',2);
plot(sali6,dept6,'-y','LineWidth',2);
plot(sali7,dept7,'-m','LineWidth',2);
plot(sali8,dept8,'-.k','LineWidth',2);
%plot(sali9,dept9,'-.b','LineWidth',2);
plot(sali10,dept10,'-.r','LineWidth',2);
plot(sali11,dept11,'-.c','LineWidth',2);
plot(sali12,dept12,'-.g','LineWidth',2);
hold off,
%axis ([22 35 2 700]) %tight
xlab = xlabel('Salinity (psu)');
ylab = ylabel('Depth (m)');
set([xlab,ylab],'FontName','Arial');%Helvetica
set([xlab,ylab],'FontSize',32);
set(gca,'FontSize',24,'TickDir','out'); %set(gca,'TickDir','out')
set(gca,'yDir','reverse');
legend('XCTD1','XCTD2','XCTD3','XCTD4','XCTD5','XCTD6','XCTD7','XCTD8','XCTD10','XCTD11','XCTD12')
set(legend,'FontSize',18);

%%%%%%%%%%%%%%%%%%%%%%%% density %%%%%%%%%%%%%
figure (3),
plot(dens1,dept1,'-k','LineWidth',2);
hold on,
plot(dens2,dept2,'-b','LineWidth',2);
plot(dens3,dept3,'-r','LineWidth',2);
plot(dens4,dept4,'-c','LineWidth',2);
plot(dens5,dept5,'-g','LineWidth',2);
plot(dens6,dept6,'-y','LineWidth',2);
plot(dens7,dept7,'-m','LineWidth',2);
plot(dens8,dept8,'-.k','LineWidth',2);
%plot(dens9,dept9,'-.b','LineWidth',2);
plot(dens10,dept10,'-.r','LineWidth',2);
plot(dens11,dept11,'-.c','LineWidth',2);
plot(dens12,dept12,'-.g','LineWidth',2);
hold off,
%axis ([1015 1035 2 700]) %tight
xlab = xlabel('Potential density ()');
ylab = ylabel('Depth (m)');
set([xlab,ylab],'FontName','Arial');%Helvetica
set([xlab,ylab],'FontSize',32);
set(gca,'FontSize',24,'TickDir','out'); %set(gca,'TickDir','out')
set(gca,'yDir','reverse');
legend('XCTD1','XCTD2','XCTD3','XCTD4','XCTD5','XCTD6','XCTD7','XCTD8','XCTD10','XCTD11','XCTD12')
set(legend,'FontSize',18);

%%% 2 sigma buoyancy %%%%%
%%% mean(buoyancy1(22:150))+(std(buoyancy1(22:150))) %%%%
%buoyancy2 = buoyancy1.*buoyancy1;
%brunt =(buoyancyx/3600)*2*pi; 

%%%%%%%%%%%%%%%%%%%%%%%% buoyancy all data %%%%%%%%%%%%%
figure (4),
plot(buoy1,dept1,'-k','LineWidth',2);
hold on,
plot(buoy2,dept2,'-b','LineWidth',2);
plot(buoy3,dept3,'-r','LineWidth',2);
plot(buoy4,dept4,'-c','LineWidth',2);
plot(buoy5,dept5,'-g','LineWidth',2);
plot(buoy6,dept6,'-y','LineWidth',2);
plot(buoy7,dept7,'-m','LineWidth',2);
plot(buoy8,dept8,'-.k','LineWidth',2);
%plot(buoy9,dept9,'-.b','LineWidth',2);
plot(buoy10,dept10,'-.r','LineWidth',2);
plot(buoy11,dept11,'-.c','LineWidth',2);
plot(buoy12,dept12,'-.g','LineWidth',2);
%plot(x1sig,x2sig,'-.r','LineWidth',3);
%plot(y1sig,y2sig,'-.r','LineWidth',3);
hold off,
%axis ([-20 20 2 700]) %tight
xlab = xlabel('N (s)');
ylab = ylabel('Depth (m)');
tit = title('Buoyancy (N)(From XCTD all data)');
set(gca,'YDir','reverse');
set([tit,xlab,ylab],'FontName','Arial');%Helvetica
set(tit,'FontSize',18,'FontWeight','bold');
set([xlab,ylab],'FontSize',15);
set(gca,'TickDir','out')
legend('XCTD1','XCTD2','XCTD3','XCTD4','XCTD5','XCTD6','XCTD7','XCTD8','XCTD10','XCTD11','XCTD12')
set(legend,'FontSize',18);
%legend('(Mean value) N = 0.21 cph = 0.00037 s^-^1','2\sigma_N = 10.7','Location','SE');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% average of every n values in a vector buoyancy 9 %%%%%%%%%
n = 35; %%% 50=7meters, 72=10m, 35=5m, 15=2m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
buoa9 = buoy9;
buob9 = arrayfun(@(i) mean(buoa9(i:i+n-1)),1:n:length(buoa9)-n+1)';
aa9 = dept9;
bb9 = arrayfun(@(i) mean(aa9(i:i+n-1)),1:n:length(aa9)-n+1)';

%%%%%%%%%%% average of every n values in a vector buoyancy 8 %%%%%%%%%
buoa8 = buoy8;
buob8 = arrayfun(@(i) mean(buoa8(i:i+n-1)),1:n:length(buoa8)-n+1)';
aa8 = dept8;
bb8 = arrayfun(@(i) mean(aa8(i:i+n-1)),1:n:length(aa8)-n+1)';

%%%%%%%%%%% average of every n values in a vector buoyancy 7 %%%%%%%%%
buoa7 = buoy7;
buob7 = arrayfun(@(i) mean(buoa7(i:i+n-1)),1:n:length(buoa7)-n+1)';
aa7 = dept7;
bb7 = arrayfun(@(i) mean(aa7(i:i+n-1)),1:n:length(aa7)-n+1)';

%%%%%%%%%%% average of every n values in a vector buoyancy 6 %%%%%%%%%
buoa6 = buoy6;
buob6 = arrayfun(@(i) mean(buoa6(i:i+n-1)),1:n:length(buoa6)-n+1)';
aa6 = dept6;
bb6 = arrayfun(@(i) mean(aa6(i:i+n-1)),1:n:length(aa6)-n+1)';

%%%%%%%%%%% average of every n values in a vector buoyancy 5 %%%%%%%%%
buoa5 = buoy5;
buob5 = arrayfun(@(i) mean(buoa5(i:i+n-1)),1:n:length(buoa5)-n+1)';
aa5 = dept5;
bb5 = arrayfun(@(i) mean(aa5(i:i+n-1)),1:n:length(aa5)-n+1)';

%%%%%%%%%%% average of every n values in a vector buoyancy 4 %%%%%%%%%
buoa4 = buoy4;
buob4 = arrayfun(@(i) mean(buoa4(i:i+n-1)),1:n:length(buoa4)-n+1)';
aa4 = dept4;
bb4 = arrayfun(@(i) mean(aa4(i:i+n-1)),1:n:length(aa4)-n+1)';

%%%%%%%%%%% average of every n values in a vector buoyancy 3 %%%%%%%%%
buoa3 = buoy3;
buob3 = arrayfun(@(i) mean(buoa3(i:i+n-1)),1:n:length(buoa3)-n+1)';
aa3 = dept3;
bb3 = arrayfun(@(i) mean(aa3(i:i+n-1)),1:n:length(aa3)-n+1)';

%%%%%%%%%%% average of every n values in a vector buoyancy 2 %%%%%%%%%
buoa2 = buoy2;
buob2 = arrayfun(@(i) mean(buoa2(i:i+n-1)),1:n:length(buoa2)-n+1)';
aa2 = dept2;
bb2 = arrayfun(@(i) mean(aa2(i:i+n-1)),1:n:length(aa2)-n+1)';

%%%%%%%%%%% average of every n values in a vector kp 1 %%%%%%%%%
nn = 35;
buoa1 = buoy1;
buob1 = arrayfun(@(i) mean(buoa1(i:i+nn-1)),1:nn:length(buoa1)-nn+1)';
aa1 = dept1;
bb1 = arrayfun(@(i) mean(aa1(i:i+nn-1)),1:nn:length(aa1)-nn+1)';

%%%%%%%%%%% average of every n values in a vector kp 10 %%%%%%%%%
nn = 35;
buoa10 = buoy10;
buob10 = arrayfun(@(i) mean(buoa10(i:i+nn-1)),1:nn:length(buoa10)-nn+1)';
aa10 = dept10;
bb10 = arrayfun(@(i) mean(aa10(i:i+nn-1)),1:nn:length(aa10)-nn+1)';

%%%%%%%%%%% average of every n values in a vector kp 11 %%%%%%%%%
nn = 35;
buoa11 = buoy11;
buob11 = arrayfun(@(i) mean(buoa11(i:i+nn-1)),1:nn:length(buoa11)-nn+1)';
aa11 = dept11;
bb11 = arrayfun(@(i) mean(aa11(i:i+nn-1)),1:nn:length(aa11)-nn+1)';

%%%%%%%%%%% average of every n values in a vector kp 12 %%%%%%%%%
nn = 35;
buoa12 = buoy12;
buob12 = arrayfun(@(i) mean(buoa12(i:i+nn-1)),1:nn:length(buoa12)-nn+1)';
aa12 = dept12;
bb12 = arrayfun(@(i) mean(aa12(i:i+nn-1)),1:nn:length(aa12)-nn+1)';

%%%%%%%%%%%%%%%%%% buoyancy filter data %%%%%%%%%%%%%%%%%
figure (5),
plot(buob1,bb1,'-k','LineWidth',2);
hold on,
plot (buob2, bb2,'-b','LineWidth',3);
plot (buob3, bb3,'-r','LineWidth',3);
plot (buob4, bb4,'-c','LineWidth',3);
plot (buob5, bb5,'-g','LineWidth',3);
plot (buob6, bb6,'-y','LineWidth',3);
plot (buob7, bb7,'-m','LineWidth',3);
plot (buob8, bb8,'-.k','LineWidth',3);
%plot (buob9, bb9,'-.b','LineWidth',3);
plot(buob10,bb10,'-.r','LineWidth',2);
plot(buob11,bb11,'-.c','LineWidth',2);
plot(buob12,bb12,'-.g','LineWidth',2);
xlab = xlabel('N (s)');
ylab = ylabel('Depth (m)');
axis ([-4 5 0 350]) %tight
tit = title('Buoyancy (N)(XCTD) Sill 2007');
set(gca,'YDir','reverse');
set([tit,xlab,ylab],'FontName','Arial');%Helvetica
set(tit,'FontSize',18,'FontWeight','bold');
set([xlab,ylab],'FontSize',15);
set(gca,'TickDir','out')
legend('XCTD1','XCTD2','XCTD3','XCTD4','XCTD5','XCTD6','XCTD7','XCTD8','XCTD10','XCTD11','XCTD12')
set(legend,'FontSize',18);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% parameter lines turber angle %%%%%%%%%%%%%%%%
x1sig = [-45,-45]; ysig = [10,340];
x2sig = [45,45]; x3sig = [90,90];

%%%%%%%%%%%%%%%%%%%%%%%% turner angle %%%%%%%%%%%%%
figure (6),
plot(tang1,dept1,'-k','LineWidth',2);
hold on,
plot(tang2,dept2,'-b','LineWidth',2);
plot(tang3,dept3,'-r','LineWidth',2);
plot(tang4,dept4,'-c','LineWidth',2);
plot(tang5,dept5,'-g','LineWidth',2);
plot(tang6,dept6,'-y','LineWidth',2);
plot(tang7,dept7,'-m','LineWidth',2);
plot(tang8,dept8,'-.k','LineWidth',2);
%plot(tang9,dept9,'-.b','LineWidth',2);
plot(tang10,dept10,'-.r','LineWidth',2);
plot(tang11,dept11,'-.c','LineWidth',2);
plot(tang12,dept12,'-.g','LineWidth',2);

%plot(x1sig,ysig,'-.r','LineWidth',3);
%plot(x2sig,ysig,'-.r','LineWidth',3);
hold off,
%axis ([-20 20 2 700]) %tight
xlab = xlabel('T. Angle (o)');
ylab = ylabel('Depth (m)');
tit = title('Turner Angle (Tu)(From XCTD all data)');
set(gca,'YDir','reverse');
set([tit,xlab,ylab],'FontName','Arial');%Helvetica
set(tit,'FontSize',18,'FontWeight','bold');
set([xlab,ylab],'FontSize',15);
set(gca,'TickDir','out')
legend('XCTD1','XCTD2','XCTD3','XCTD4','XCTD5','XCTD6','XCTD7','XCTD8','XCTD10','XCTD11','XCTD12')
set(legend,'FontSize',18);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% average of every n values in a vector turner angle 9 %%%%%%%%%
tura9 = tang9;
turb9 = arrayfun(@(i) mean(tura9(i:i+n-1)),1:n:length(tura9)-n+1)';

%%%%%%%%%%% average of every n values in a vector turner angle 8 %%%%%%%%%
tura8 = tang8;
turb8 = arrayfun(@(i) mean(tura8(i:i+n-1)),1:n:length(tura8)-n+1)';

%%%%%%%%%%% average of every n values in a vector turner angle 7 %%%%%%%%%
tura7 = tang7;
turb7 = arrayfun(@(i) mean(tura7(i:i+n-1)),1:n:length(tura7)-n+1)';

%%%%%%%%%%% average of every n values in a vector turner angle 6 %%%%%%%%%
tura6 = tang6;
turb6 = arrayfun(@(i) mean(tura6(i:i+n-1)),1:n:length(tura6)-n+1)';

%%%%%%%%%%% average of every n values in a vector turner angle 5 %%%%%%%%%
tura5 = tang5;
turb5 = arrayfun(@(i) mean(tura5(i:i+n-1)),1:n:length(tura5)-n+1)';

%%%%%%%%%%% average of every n values in a vector turner angle 4 %%%%%%%%%
tura4 = tang4;
turb4 = arrayfun(@(i) mean(tura4(i:i+n-1)),1:n:length(tura4)-n+1)';

%%%%%%%%%%% average of every n values in a vector turner angle 3 %%%%%%%%%
tura3 = tang3;
turb3 = arrayfun(@(i) mean(tura3(i:i+n-1)),1:n:length(tura3)-n+1)';

%%%%%%%%%%% average of every n values in a vector turner angle 2 %%%%%%%%%
tura2 = tang2;
turb2 = arrayfun(@(i) mean(tura2(i:i+n-1)),1:n:length(tura2)-n+1)';

%%%%%%%%%%% average of every n values in a vector turner angle 1 %%%%%%%%%
tura1 = tang1;
turb1 = arrayfun(@(i) mean(tura1(i:i+nn-1)),1:nn:length(tura1)-nn+1)';

%%%%%%%%%%% average of every n values in a vector turner angle 10 %%%%%%%%%
tura10 = tang10;
turb10 = arrayfun(@(i) mean(tura10(i:i+nn-1)),1:nn:length(tura10)-nn+1)';

%%%%%%%%%%% average of every n values in a vector turner angle 11 %%%%%%%%%
tura11 = tang11;
turb11 = arrayfun(@(i) mean(tura11(i:i+nn-1)),1:nn:length(tura11)-nn+1)';

%%%%%%%%%%% average of every n values in a vector turner angle 12 %%%%%%%%%
tura12 = tang12;
turb12 = arrayfun(@(i) mean(tura12(i:i+nn-1)),1:nn:length(tura12)-nn+1)';

figure (7),
plot(turb1,bb1,'-k','LineWidth',2);
hold on,
plot (turb2, bb2,'-b','LineWidth',3);
plot (turb3, bb3,'-r','LineWidth',3);
plot (turb4, bb4,'-c','LineWidth',3);
plot (turb5, bb5,'-g','LineWidth',3);
plot (turb6, bb6,'-y','LineWidth',3);
plot (turb7, bb7,'-m','LineWidth',3);
plot (turb8, bb8,'-.k','LineWidth',3);
%plot (turb9, bb9,'-.b','LineWidth',3);
plot(turb10,bb10,'-.r','LineWidth',2);
plot(turb11,bb11,'-.c','LineWidth',2);
plot(turb12,bb12,'-.g','LineWidth',2);

plot(x1sig,ysig,'-.r','LineWidth',3);
plot(x2sig,ysig,'-.r','LineWidth',3);
plot(x3sig,ysig,'-.r','LineWidth',3);
xlab = xlabel('T. Angle (o)');
ylab = ylabel('Depth (m)');
tit = title('Turner Angle (Tu)(XCTD) Sill 2007');
set(gca,'YDir','reverse');
set([tit,xlab,ylab],'FontName','Arial');%Helvetica
set(tit,'FontSize',18,'FontWeight','bold');
set([xlab,ylab],'FontSize',15);
set(gca,'TickDir','out')
legend('XCTD1','XCTD2','XCTD3','XCTD4','XCTD5','XCTD6','XCTD7','XCTD8','XCTD10','XCTD11','XCTD12')
set(legend,'FontSize',18);
%text(-60, 310,'\fontsize{26} Diffussivity')
text(-6, 310,'\fontsize{26} Stable')
text(55, 310,'\fontsize{26} Salt fingering')
%text(100, 310,'\fontsize{26} Instability')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% dissipation rate thorpe scale approach %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% reorder density 1 %%%%%%%%%%
thor1= [dens1; dept1]';
tho1=sortrows(thor1);
dsor1 = tho1(:,2);
rdso1 = zeros(0,2731);
 for i=1:2731
   rdso1(i)=(dept1(i) - dsor1(i));
 end
%%%%%%%%% reorder density 2 %%%%%%%%%%
thor2= [dens2; dept2]';
tho2=sortrows(thor2);
dsor2 = tho2(:,2);
rdso2 = zeros(0,1085);
 for i=1:1085
   rdso2(i)=(dept2(i) - dsor2(i));
 end
 %%%%%%%%% reorder density 3 %%%%%%%%%%
thor3= [dens3; dept3]';
tho3=sortrows(thor3);
dsor3 = tho3(:,2);
rdso3 = zeros(0,1060);
 for i=1:1060
   rdso3(i)=(dept3(i) - dsor3(i));
 end
 %%%%%%%%% reorder density 4 %%%%%%%%%%
thor4= [dens4; dept4]';
tho4=sortrows(thor4);
dsor4 = tho4(:,2);
rdso4 = zeros(0,841);
 for i=1:841
   rdso4(i)=(dept4(i) - dsor4(i));
 end
 %%%%%%%%% reorder density 5 %%%%%%%%%%
thor5= [dens5; dept5]';
tho5=sortrows(thor5);
dsor5 = tho5(:,2);
rdso5 = zeros(0,840);
 for i=1:840
   rdso5(i)=(dept5(i) - dsor5(i));
 end
 %%%%%%%%% reorder density 6 %%%%%%%%%%
thor6= [dens6; dept6]';
tho6=sortrows(thor6);
dsor6 = tho6(:,2);
rdso6 = zeros(0,1153);
 for i=1:1153
   rdso6(i)=(dept6(i) - dsor6(i));
 end
 %%%%%%%%% reorder density 7 %%%%%%%%%%
thor7= [dens7; dept7]';
tho7=sortrows(thor7);
dsor7 = tho7(:,2);
rdso7 = zeros(0,1077);
 for i=1:1077
   rdso7(i)=(dept7(i) - dsor7(i));
 end
 %%%%%%%%% reorder density 8 %%%%%%%%%%
thor8= [dens8; dept8]';
tho8=sortrows(thor8);
dsor8 = tho8(:,2);
rdso8 = zeros(0,1369);
 for i=1:1369
   rdso8(i)=(dept8(i) - dsor8(i));
 end
 %%%%%%%%% reorder density 9 %%%%%%%%%%
thor9= [dens9; dept9]';
tho9=sortrows(thor9);
dsor9 = tho9(:,2);
rdso9 = zeros(0,1592);
 for i=1:1592
   rdso9(i)=(dept9(i) - dsor9(i));
 end
 %%%%%%%%% reorder density 10 %%%%%%%%%%
thor10= [dens10; dept10]';
tho10=sortrows(thor10);
dsor10 = tho10(:,2);
rdso10 = zeros(0,1524);
 for i=1:1524
   rdso10(i)=(dept10(i) - dsor10(i));
 end
 %%%%%%%%% reorder density 11 %%%%%%%%%%
thor11= [dens11; dept11]';
tho11=sortrows(thor11);
dsor11 = tho11(:,2);
rdso11 = zeros(0,1426);
 for i=1:1426
   rdso11(i)=(dept11(i) - dsor11(i));
 end
 %%%%%%%%% reorder density 12 %%%%%%%%%%
thor12= [dens12; dept12]';
tho12=sortrows(thor12);
dsor12 = tho12(:,2);
rdso12 = zeros(0,1706);
 for i=1:1706
   rdso12(i)=(dept12(i) - dsor12(i));
 end
 
%%%%%%%%%%%%%%%%%%%%%%% plot thorp scale reorder  %%%%%%%%%%%%%%%%%
figure (8),
plot (rdso1,dept1,'-k','LineWidth',3);
hold on,
plot (rdso2,dept2,'-b','LineWidth',3);
plot (rdso3,dept3,'-r','LineWidth',3);
plot (rdso4,dept4,'-c','LineWidth',3);
plot (rdso5,dept5,'-g','LineWidth',3);
plot (rdso6,dept6,'-y','LineWidth',3);
plot (rdso7,dept7,'-m','LineWidth',3);
plot (rdso8,dept8,'-.k','LineWidth',3);
%plot (rdso9,dept9,'-.b','LineWidth',3);
plot (rdso10,dept10,'-.r','LineWidth',3);
plot (rdso11,dept11,'-.c','LineWidth',3);
plot (rdso12,dept12,'-.g','LineWidth',3);
hold off,
%axis ([-10 10 0 800]) %tight
xlab = xlabel('d_T^2 (m)');
ylab = ylabel('Depth (m)');
tit = title('Thorpe displacement (reordered density)(From XCTD)');
set(gca,'YDir','reverse');
set([tit,xlab,ylab],'FontName','Arial');%Helvetica
set(tit,'FontSize',38,'FontWeight','bold');
set([xlab,ylab],'FontSize',32);
set(gca,'FontSize',24,'TickDir','out')
legend('XCTD1','XCTD2','XCTD3','XCTD4','XCTD5','XCTD6','XCTD7','XCTD8','XCTD10','XCTD11','XCTD12')
set(legend,'FontSize',18); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% thorpe scale 
lt1 = sqrt((rdso1).^2);
lt2 = sqrt((rdso2).^2);
lt3 = sqrt((rdso3).^2);
lt4 = sqrt((rdso4).^2);
lt5 = sqrt((rdso5).^2);
lt6 = sqrt((rdso6).^2);
lt7 = sqrt((rdso7).^2);
lt8 = sqrt((rdso8).^2);
%lt9 = sqrt((rdso9).^2);
lt10 = sqrt((rdso10).^2);
lt11 = sqrt((rdso11).^2);
lt12 = sqrt((rdso12).^2);

%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 1
fac = 12; %%% proportionality factor
epsi1 = zeros(0,2731);
 for i=1:2731
   epsi1(i)= 0.64 .* ((lt1(i))^2) .* ((buoy1(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth1 =zeros(0,2731);
for i=1:2731
    kpth1(i) = 0.2 .* ( (epsi1(i)) ./ ((buoy1(i))^2) ); %%% (osborn 1980)
end
l10kpth1 = log10(kpth1)*fac;

%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 2
epsi2 = zeros(0,1085);
 for i=1:1085
   epsi2(i)= 0.64 .* ((lt2(i))^2) .* ((buoy2(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth2 =zeros(0,1085);
for i=1:1085
    kpth2(i) = 0.2 .* ( (epsi2(i)) ./ ((buoy2(i))^2) ); %%% (osborn 1980)
end
l10kpth2 = log10(kpth2)*fac;

%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 3
epsi3 = zeros(0,1060);
 for i=1:1060
   epsi3(i)= 0.64 .* ((lt3(i))^2) .* ((buoy3(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth3 =zeros(0,1060);
for i=1:1060
    kpth3(i) = 0.2 .* ( (epsi3(i)) ./ ((buoy3(i))^2) ); %%% (osborn 1980)
end
l10kpth3 = log10(kpth3)*fac;

%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 4
epsi4 = zeros(0,841);
 for i=1:841
   epsi4(i)= 0.64 .* ((lt4(i))^2) .* ((buoy4(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth4 =zeros(0,841);
for i=1:841
    kpth4(i) = 0.2 .* ( (epsi4(i)) ./ ((buoy4(i))^2) ); %%% (osborn 1980)
end
l10kpth4 = log10(kpth4)*fac;

%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 5
epsi5 = zeros(0,840);
 for i=1:840
   epsi5(i)= 0.64 .* ((lt5(i))^2) .* ((buoy5(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth5 =zeros(0,840);
for i=1:840
    kpth5(i) = 0.2 .* ( (epsi5(i)) ./ ((buoy5(i))^2) ); %%% (osborn 1980)
end
l10kpth5 = log10(kpth5)*fac;

%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 6
epsi6 = zeros(0,1153);
 for i=1:1153
   epsi6(i)= 0.64 .* ((lt6(i))^2) .* ((buoy6(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth6 =zeros(0,1153);
for i=1:1153
    kpth6(i) = 0.2 .* ( (epsi6(i)) ./ ((buoy6(i))^2) ); %%% (osborn 1980)
end
l10kpth6 = log10(kpth6)*fac;

%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 7
epsi7 = zeros(0,1077);
 for i=1:1077
   epsi7(i)= 0.64 .* ((lt7(i))^2) .* ((buoy7(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth7 =zeros(0,1077);
for i=1:1077
    kpth7(i) = 0.2 .* ( (epsi7(i)) ./ ((buoy7(i))^2) ); %%% (osborn 1980)
end
l10kpth7 = log10(kpth7)*fac;

%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 8
epsi8 = zeros(0,1369);
 for i=1:1369
   epsi8(i)= 0.64 .* ((lt8(i))^2) .* ((buoy8(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth8 =zeros(0,1369);
for i=1:1369
    kpth8(i) = 0.2 .* ( (epsi8(i)) ./ ((buoy8(i))^2) ); %%% (osborn 1980)
end
l10kpth8 = log10(kpth8)*fac;

%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 9
epsi9 = zeros(0,1592);
 for i=1:1592
   epsi9(i)= 0.64 .* ((lt9(i))^2) .* ((buoy9(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth9 =zeros(0,1592);
for i=1:1592
    kpth9(i) = 0.2 .* ( (epsi9(i)) ./ ((buoy9(i))^2) ); %%% (osborn 1980)
end
l10kpth9 = log10(kpth9)*fac;
%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 10
epsi10 = zeros(0,1524);
 for i=1:1524
   epsi10(i)= 0.64 .* ((lt10(i))^2) .* ((buoy10(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth10 =zeros(0,1524);
for i=1:1524
    kpth10(i) = 0.2 .* ( (epsi10(i)) ./ ((buoy10(i))^2) ); %%% (osborn 1980)
end
l10kpth10 = log10(kpth10)*fac;
%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 11
epsi11 = zeros(0,1426);
 for i=1:1426
   epsi11(i)= 0.64 .* ((lt11(i))^2) .* ((buoy11(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth11 =zeros(0,1426);
for i=1:1426
    kpth11(i) = 0.2 .* ( (epsi11(i)) ./ ((buoy11(i))^2) ); %%% (osborn 1980)
end
l10kpth11 = log10(kpth11)*fac;
%%%%%%%%%%%%%%%%%%%%%% dissipation rate thorpe approach 12
epsi12 = zeros(0,1706);
 for i=1:1706
   epsi12(i)= 0.64 .* ((lt12(i))^2) .* ((buoy12(i))^3) ;
 end
 %%%%%%%%%%%% diapicnal difussivity from osborn 1980
kpth12 =zeros(0,1706);
for i=1:1706
    kpth12(i) = 0.2 .* ( (epsi12(i)) ./ ((buoy12(i))^2) ); %%% (osborn 1980)
end
l10kpth12 = log10(kpth12)*fac;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% limites de difusividades diapicnas
lox=[-4,-4]; loy=[10,320];
lax=[-5,-5]; lay=[10,320];

%%%%%%%%%%%%%%%%%%%% plot kp thorpe approach %%%%%%%%%%
figure (9),
plot (l10kpth1,dept1,'-k','LineWidth',3);
hold on,
plot (l10kpth2,dept2,'-b','LineWidth',3);
plot (l10kpth3,dept3,'-r','LineWidth',3);
plot (l10kpth4,dept4,'-c','LineWidth',3);
plot (l10kpth5,dept5,'-g','LineWidth',3);
plot (l10kpth6,dept6,'-y','LineWidth',3);
plot (l10kpth7,dept7,'-m','LineWidth',3);
plot (l10kpth8,dept8,'-.k','LineWidth',3);
%plot (l10kpth9,dept9,'-.b','LineWidth',3);
plot(lox,loy,'-.k','LineWidth',3);
text(-3.95, 310,'\fontsize{27} \leftarrow  K_p=10^-^4 - Global average')
plot(lax,lay,'-.k','LineWidth',3);
text(-7.8, 310,'\fontsize{27} K_p=10^-^5 - Pelagic difussivity \rightarrow')
hold off,
%axis ([-17 -2 2 700]) %tight
xlab = xlabel('log_1_0 K_p (m^2s^-^1)');
ylab = ylabel('Depth (m)');
tit = title('Diapycnal difussivity (From XCTD-XCP Thorpe Approach all data)');
set(gca,'YDir','reverse');
set([tit,xlab,ylab],'FontName','Arial');%Helvetica
set(tit,'FontSize',38,'FontWeight','bold');
set([xlab,ylab],'FontSize',32);
set(gca,'FontSize',24,'TickDir','out')
legend('XCTD1','XCTD2','XCTD3','XCTD4','XCTD5','XCTD6','XCTD7','XCTD8','XCTD10','XCTD11','XCTD12')
set(legend,'FontSize',18);  

%%%%%%%%%%% average of every n values in a vector kp 1 %%%%%%%%%
%%%%%%%%%%% average of every n values in a vector buoyancy 9 %%%%%%%%%
n = 72; %%% 50=7meters, 72=10m, 35=5m, 15=2m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nn = 72; ta1 = l10kpth1;
tb1 = arrayfun(@(i) mean(ta1(i:i+nn-1)),1:nn:length(ta1)-nn+1)';
tbi1 = imag(tb1);
aa1 = dept1;
bb1 = arrayfun(@(i) mean(aa1(i:i+nn-1)),1:nn:length(aa1)-nn+1)';
%%%%%%%%%%% average of every n values in a vector kp 2 %%%%%%%%%
ta2 = l10kpth2;
tb2 = arrayfun(@(i) mean(ta2(i:i+n-1)),1:n:length(ta2)-n+1)';
tbi2 = imag(tb2);
aa2 = dept2;
bb2 = arrayfun(@(i) mean(aa2(i:i+n-1)),1:n:length(aa2)-n+1)';
%%%%%%%%%%% average of every n values in a vector kp 3 %%%%%%%%%
ta3 = l10kpth3;
tb3 = arrayfun(@(i) mean(ta3(i:i+n-1)),1:n:length(ta3)-n+1)';
tbi3 = imag(tb3);
aa3 = dept3;
bb3 = arrayfun(@(i) mean(aa3(i:i+n-1)),1:n:length(aa3)-n+1)';
%%%%%%%%%%% average of every n values in a vector kp 4 %%%%%%%%%
ta4 = l10kpth4;
tb4 = arrayfun(@(i) mean(ta4(i:i+n-1)),1:n:length(ta4)-n+1)';
tbi4 = imag(tb4);
aa4 = dept4;
bb4 = arrayfun(@(i) mean(aa4(i:i+n-1)),1:n:length(aa4)-n+1)';
%%%%%%%%%%% average of every n values in a vector kp 5 %%%%%%%%%
ta5 = l10kpth5;
tb5 = arrayfun(@(i) mean(ta5(i:i+n-1)),1:n:length(ta5)-n+1)';
tbi5 = imag(tb5);
aa5 = dept5;
bb5 = arrayfun(@(i) mean(aa5(i:i+n-1)),1:n:length(aa5)-n+1)';
%%%%%%%%%%% average of every n values in a vector kp 6 %%%%%%%%%
ta6 = l10kpth6;
tb6 = arrayfun(@(i) mean(ta6(i:i+n-1)),1:n:length(ta6)-n+1)';
tbi6 = imag(tb6);
aa6 = dept6;
bb6 = arrayfun(@(i) mean(aa6(i:i+n-1)),1:n:length(aa6)-n+1)';
%%%%%%%%%%% average of every n values in a vector kp 7 %%%%%%%%%
ta7 = l10kpth7;
tb7 = arrayfun(@(i) mean(ta7(i:i+n-1)),1:n:length(ta7)-n+1)';
tbi7 = imag(tb7);
aa7 = dept7;
bb7 = arrayfun(@(i) mean(aa7(i:i+n-1)),1:n:length(aa7)-n+1)';
%%%%%%%%%%% average of every n values in a vector kp 8 %%%%%%%%%
ta8 = l10kpth8;
tb8 = arrayfun(@(i) mean(ta8(i:i+n-1)),1:n:length(ta8)-n+1)';
tbi8 = imag(tb8);
aa8 = dept8;
bb8 = arrayfun(@(i) mean(aa8(i:i+n-1)),1:n:length(aa8)-n+1)';
%%%%%%%%%%% average of every n values in a vector kp 9 %%%%%%%%%
ta9 = l10kpth9;
tb9 = arrayfun(@(i) mean(ta9(i:i+n-1)),1:n:length(ta9)-n+1)';
tbi9 = imag(tb9);
aa9 = dept9;
bb9 = arrayfun(@(i) mean(aa9(i:i+n-1)),1:n:length(aa9)-n+1)';
%%%%%%%%%%% average of every n values in a vector kp 10 %%%%%%%%%
ta10 = l10kpth10;
tb10 = arrayfun(@(i) mean(ta10(i:i+nn-1)),1:nn:length(ta10)-nn+1)';
tbi10 = imag(tb10);
aa10 = dept10;
bb10 = arrayfun(@(i) mean(aa10(i:i+nn-1)),1:nn:length(aa10)-nn+1)';
%%%%%%%%%%% average of every n values in a vector kp 11 %%%%%%%%%
ta11 = l10kpth11;
tb11 = arrayfun(@(i) mean(ta11(i:i+nn-1)),1:nn:length(ta11)-nn+1)';
tbi11 = imag(tb11);
aa11 = dept11;
bb11 = arrayfun(@(i) mean(aa11(i:i+nn-1)),1:nn:length(aa11)-nn+1)';
%%%%%%%%%%% average of every n values in a vector kp 12 %%%%%%%%%
ta12 = l10kpth12;
tb12 = arrayfun(@(i) mean(ta12(i:i+nn-1)),1:nn:length(ta12)-nn+1)';
tbi12 = imag(tb12);
aa12 = dept12;
bb12 = arrayfun(@(i) mean(aa12(i:i+nn-1)),1:nn:length(aa12)-nn+1)';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% diapicnal plot every 5 m %%%%%%%%%%%%%
figure (10),
plot (tbi1,bb1,'-k','LineWidth',3);
hold on,
plot (tbi2, bb2,'-b','LineWidth',3);
plot (tbi3, bb3,'-r','LineWidth',3);
plot (tbi4, bb4,'-c','LineWidth',3);
plot (tbi5, bb5,'-g','LineWidth',3);
plot (tbi6, bb6,'-y','LineWidth',3);
plot (tbi7, bb7,'-m','LineWidth',3);
plot (tbi8, bb8,'-.k','LineWidth',3);
%plot (tbi9, bb9,'-.b','LineWidth',3);
plot (tbi10,bb10,'-.r','LineWidth',3);
plot (tbi11,bb11,'-.c','LineWidth',3);
plot (tbi12,bb12,'-.g','LineWidth',3);

plot(lox,loy,'-.k','LineWidth',3);
text(-3.95, 310,'\fontsize{27} \leftarrow  Global average')
plot(lax,lay,'-.k','LineWidth',3);
text(-7.5, 310,'\fontsize{27} Pelagic difussivity \rightarrow')
hold off,
axis ([-10 0 0 350]) %tight
xlab = xlabel('log_1_0 K_p (m^2s^-^1)');
ylab = ylabel('Depth (m)');
tit = title('Diapycnal difussivity (XCTD Thorpe Approach) Sill 2007');
set(gca,'YDir','reverse');
set([tit,xlab,ylab],'FontName','Arial');%Helvetica
set(tit,'FontSize',38,'FontWeight','bold');
set([xlab,ylab],'FontSize',32);
text(-3.5,150,'Logkp1 = -6.72')
text(-3.5,160,'Logkp2 = -6.80')
text(-3.5,170,'Logkp3 = -6.26')
text(-3.5,180,'Logkp4 = -5.60')
text(-3.5,190,'Logkp5 = -6.40')
text(-3.5,200,'Logkp6 = -6.60')
text(-3.5,210,'Logkp7 = -5.79')
text(-3.5,220,'Logkp8 = -6.94')
text(-3.5,230,'Logkp10 = -7.13')
text(-3.5,240,'Logkp11 = -6.46')
text(-3.5,250,'Logkp12 = -6.86')
set(gca,'FontSize',24,'TickDir','out')
legend('XCTD1','XCTD2','XCTD3','XCTD4','XCTD5','XCTD6','XCTD7','XCTD8','XCTD10','XCTD11','XCTD12')
set(legend,'FontSize',18);

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%% END %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%