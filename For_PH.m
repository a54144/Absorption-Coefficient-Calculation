%这个程序是帮助潘红师姐写的计算差值的小程序。
A = [];
count=0;
B = cell(1);
depth1 = 10
depth2 = 150

for i=1:1029
    if data(i,4) <depth1 & data(i+1,4) >= depth1
        if data(i+1,4) == depth1
            A(i+count,1:10)=data(i,1:10);
            B(i+count,1:4)=textdata(i,1:4);
        else
            A(i+count,1:10) = data(i,1:10);
            B(i+count,1:4)=textdata(i,1:4);
            count = count+1;
            A(i+count,4) = depth1;
            A(i+count,3) = A(i+count-1,3);
            A(i+count,2) = A(i+count-1,2);
            A(i+count,1) = A(i+count-1,1);
            A(i+count,6) = data(i,6)+(depth1-data(i,4))*(data(i+1,6)-data(i,6))/(data(i+1,4)-data(i,4));
            A(i+count,7) = data(i,7)+(depth1-data(i,4))*(data(i+1,7)-data(i,7))/(data(i+1,4)-data(i,4));
            B(i+count,1:4)=textdata(i,1:4);
        end
    elseif i-1>0 & data(i,4)<data(i-1,4) & data(i,4)>depth1
            A(i+count,4) = depth1;
            A(i+count,3) = A(i+count-1,3);
            A(i+count,2) = A(i+count-1,2);
            A(i+count,1) = A(i+count-1,1);
            A(i+count,6) = data(i,6)-(data(i,4)-depth1)*(data(i+1,6)-data(i,6))/(data(i+1,4)-data(i,4));
            A(i+count,7) = data(i,7)-(data(i,4)-depth1)*(data(i+1,7)-data(i,7))/(data(i+1,4)-data(i,4));
            B(i+count,1:4)=textdata(i,1:4);
            count = count+1
            A(i+count,1:10) = data(i,1:10);
            B(i+count,1:4)=textdata(i,1:4);
            
    elseif data(i,4)<depth2 & data(i+1,4)>=depth2
        if data(i+1,4) == depth2
            A(i+count,1:10) = data(i,1:10);
            B(i+count,1:4)=textdata(i,1:4);
        else
            A(i+count,1:10) = data(i,1:10);
            B(i+count,1:4)=textdata(i,1:4);
            count = count +1;
            A(i+count,4) = depth2;
            A(i+count,3) = A(i+count-1,3);
            A(i+count,2) = A(i+count-1,2);
            A(i+count,1) = A(i+count-1,1);
            A(i+count,6) = data(i,6)+(depth2-data(i,4))*(data(i+1,6)-data(i,6))/(data(i+1,4)-data(i,4));
            A(i+count,7) = data(i,7)+(depth2-data(i,4))*(data(i+1,7)-data(i,7))/(data(i+1,4)-data(i,4));
            B(i+count,1:4)=textdata(i,1:4);
        end
    elseif data(i,4)>data(i+1,4) & data(i,4)<depth2
            A(i+count,1:10) = data(i,1:10);
            B(i+count,1:4)=textdata(i,1:4);
            count = count +1;
            A(i+count,4) = depth2;
            A(i+count,3) = A(i+count-1,3);
            A(i+count,2) = A(i+count-1,2);
            A(i+count,1) = A(i+count-1,1);
            A(i+count,6) = data(i,6)+(depth2-data(i,4))*(data(i,6)-data(i-1,6))/(data(i,4)-data(i-1,4));
            A(i+count,7) = data(i,7)+(depth2-data(i,4))*(data(i,7)-data(i-1,7))/(data(i,4)-data(i-1,4));
            B(i+count,1:4)=textdata(i,1:4);
    else
        A(i+count,1:10)=data(i,1:10);
        B(i+count,1:4)=textdata(i,1:4);
    end
end

