function [path,v,vmax]=cars_enter(path,v,vmax,propcreate)
[L,W]=size(path);
if path(1,W)==1&&(rand<=propcreate*3)%��ÿ��������ڴ���������³���
    path(1,W)=-2;
    v(1,W)=ceil(rand*vmax);
end
% if path(1,W/2)==1&&(rand<=propcreate*3)%�˳������½��복����ֻ��ת�䳵��ʻ��
%     path(1,W/2)=-2;
%     v(1,W/2)=ceil(rand*vmax);
% end
if path(2,1)==1&&(rand<=propcreate*3)
    path(2,1)=-2;
    v(2,1)=ceil(rand*vmax);
end
if path(L,W/2+1)==1&&(rand<=propcreate*3)
    path(L,W/2+1)=-2;
    v(L,W/2+1)=ceil(rand*vmax);
end

    
    
