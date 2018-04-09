function [path,v,vmax]=car_speed(path,v,vmax,propslow)
[L,W]=size(path);
cartype=zeros(L,W);
distence=zeros(L,W);
movedirec=zeros(L,W);
temp1=[];temp2=[];temp3=[];temp4=[];
a1=1;a2=1;a3=1;a4=1;
for i1=1:W
    if path(1,i1)==-2
        temp1(a1)=i1;
        a1=a1+1;
    end
end
for i2=1:W
    if path(2,i2)==-2
        temp2(a2)=i2;
        a2=a2+1;
    end
end
for i3=1:L
    if path(i3,W/2)==-2
        temp3(a3)=i3;
        a3=a3+1;
    end
end
for i4=1:L
    if path(i4,W/2+1)==-2
        temp4(a4)=i4;
        a4=a4+1;
    end
end
for i=1:W%区分车行驶的四种方向，计算与前车距离  
    for k=1:length(temp1)
        m=temp1(k);
        cartype(1,m)=1;
        if k==1
            distence(1,m)=temp1(k)-1;
        else
            distence(1,m)=temp1(k)-temp1(k-1)-1;
        end
    end     
    for k=1:length(temp2)
        m=temp2(k);
        cartype(2,i)=2;
        if k==length(temp2)
                distence(2,m)=W-temp2(k);
            else
                distence(2,m)=temp2(k+1)-temp2(k)-1;
            end
    end
end
for j=1:L 
        for k=1:length(temp3)
            m=temp3(k);
            cartype(j,W/2)=3;
            if k==length(temp3)
                distence(m,W/2)=L-temp3(k);
            else
                distence(m,W/2)=temp3(k+1)-temp3(k)-1;
            end
        end             
        for k=1:length(temp4)
            m=temp4(k);
            cartype(j,W/2+1)=4;
            if k==1
                distence(m,W/2+1)=temp4(k)-1;
            else
                distence(m,W/2+1)=temp4(k)-temp4(k-1)-1;
            end
        end
end
for i=1:W%比照速度与前车距离，判断应加速、减速
    for j=1:L
        if distence(j,i)>vmax
            v(j,i)=min(v(j,i)+1,vmax);
        end
        if (distence(j,i)<vmax)&&(distence(j,i)>v(j,i))
            if rand<=propslow
                v(j,i)=max(v(j,i)-1,0);
            else
                v(j,i)=max(v(j,i),0);
            end
        end
        if distence(j,i)<v(j,i)
            v(j,i)=max(min(v(j,i)-1,distence(j,i)),0);
        end
    end
    disp(temp3);
end
for i=W%生成车行驶方向，1为直行，2为左转，3为右转
    for j=1:L
        if cartype(j,i)==1
            if j>(W/2+1)
                movedirec(j,i)=randi([1 2],1,1);
            else
                movedirec(j,i)=1;
            end
        end
        if cartype(j,i)==2
            if j<W/2
                if rand<=0.5
                    movedirec(j,i)=1;
                else 
                    mocedirec(j,i)=3;
                end
            else
                movedirec(j,i)=1;
            end
        end
        if cartype(j,i)==3
           movedirec(j,i)=1;
        end
        if cartype(j,i)==4
            movedirec(j,i)=randi([2 3],1,1);
        end
    end
end
          
                
            