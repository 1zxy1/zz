function [path,v,vmax]=traffic_signal(path,v,vmax,cartype)
[L,W]=size(path);
moveflag=zeros(L,W);
t=timer;
if 1<t<10
    lightphase=1;%横向直行指示灯
elseif 11<t<20
    lightphase=2;%横向左转指示灯
elseif 21<t<30
    lightphase=3;%纵向左转指示灯
end



