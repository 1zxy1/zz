function [path,v,vmax]=traffic_signal(path,v,vmax,cartype)
[L,W]=size(path);
moveflag=zeros(L,W);
t=timer;
if 1<t<10
    lightphase=1;%����ֱ��ָʾ��
elseif 11<t<20
    lightphase=2;%������תָʾ��
elseif 21<t<30
    lightphase=3;%������תָʾ��
end



