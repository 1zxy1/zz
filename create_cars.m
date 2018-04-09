function [path,v,vmax]=create_cars(path,v,propcreate,vmax)
[L,W]=size(path);
for i=1:W%生成车辆，赋初速度
    for j=1:2
        if(rand<=propcreate)
            path(j,i)=-2;
            v(j,i)=ceil(rand*vmax);
        end
    end
end
for i=(W/2):L
    for j=3:L
        if(rand<=propcreate)
            path(j,i)=-2;
            v(j,i)=ceil(rand*vmax);
        end
    end
end



