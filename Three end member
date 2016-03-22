%three-ends analysis tiny program
%author = @Lin_Hui
% x, y, z means the fraction of three components(f1, f2, f3),respectively
%eq1 = 'x+y+z=1'
%eq2 = 's = s1*x+s2*y+s3*z'
%eq3 = 't = t1*x+t2*y+t3*z'
%you should import the '.txt' data from 'File'-'Import data', when you first
%run this programe.
A=[];
m=2
if(m==2)
    A=[1,1,1;
    32.66078, 34.61707, 33.66616;%s1,s2,s3
    22.27922, 17.22658, 26.90336];%t1,t2,t3
    sample_num = 2302;
    month = 'July'
    elseif(m == 3)
        A=[1,1,1;
        31.37408, 34.58499, 33.64113;%s1,s2,s3
        28.80469, 16.30143, 28.0484];%t1,t2,t3
        sample_num = 1974;
        month = 'Nov'
    else
        A=[1,1,1;
        34.5, 34.7, 32.5;%s1,s2,s3
        5.1,28.6,22.5]; 
        sample_num = 1;
        month = 'Feb'
end


y=[];

for p = 1:sample_num 
    b = [1;data(p,5);data(p,4)];
    x = linsolve(A,b)';
    y=[y;x];
end
y
B = mean(y,1) %B means the mean of three fraciton
datestr(now)
xlswrite('3-endmembers_July.xls',y)
figure
plot(data(:,5),y(:,1),'o');hold on;
plot(data(:,5),y(:,2),'gd');hold on;
plot(data(:,5),y(:,3),'r+');hold on;
hTitle  = title (strcat('Salinity Vs Fraction-',month));
hXLabel = xlabel('Salinity');
hYLabel = ylabel('Fraction');
set(gca, ...
  'Box'         , 'off'     , ...
  'TickDir'     , 'out'     , ...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'on'      , ...
  'XColor'      , [.3 .3 .3], ...
  'YColor'      , [.3 .3 .3], ...
  'YTick'       , 0:0.5:1, ...
  'LineWidth'   , 1         );

