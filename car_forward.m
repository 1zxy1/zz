function [path,v,vmax]=car_forward(path,v,vmax)
[L,W]=size(path);
%模拟车向前行进过程
temp11=find(path(1,:)==-2);
for k=1:length(temp11)
    m1=temp11(k);
    if m1-v(1,m1)>0
        path(1,m1-v(1,m1))=-2;
        v(1,m1-v(1,m1))=v(1,m1);
        path(1,m1)=1;
        v(1,m1)=0;
    else
        path(1,m1)=1;
        v(1,m1)=0;
    end 
end
temp22=find(path(2,:)==-2);
for k=1:length(temp22)
    m2=temp22(k);
    if m2+v(2,m2)<=W
        path(2,m2+v(2,m2))=-2;
        v(2,m2+v(2,m2))=v(2,m2);
        path(2,m2)=1;
        v(2,m2)=0;
    else
        path(2,m2)=1;
        v(2,m2)=0; 
    end
end
temp33=find(path(:,W/2)==-2);
for k=1:length(temp33)
    m3=temp33(k);
    if m3+v(m3,W/2)<=L
        path(m3+v(m3,W/2),W/2)=-2;
        v(m3+v(m3,W/2),W/2)=v(m3,W/2);
        path(m3,W/2)=1;
        v(m3,W/2)=0;
    else
        path(m3,W/2)=1;
        v(m3,W/2)=0;
    end
end
temp44=find(path(:,W/2+1)==-2);
for k=1:length(temp44)
    m4=temp44(k);
    if m4-v(m4,W/2+1)> 0
        path(m4-v(m4,W/2+1),W/2+1)=-2;
        v(m4-v(m4,W/2+1),W/2+1)=v(m4,W/2+1);
        path(m4,W/2+1)=1;
        v(m4,W/2+1)=0;
    else
        path(m4,W/2+1)=1;
        v(m4,W/2+1)=0;
    end
end 
end


    

        


