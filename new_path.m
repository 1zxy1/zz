function [path,v]=new_path(pathlength)
path=zeros(pathlength/2+1,pathlength);%��ʼ������
v=zeros(pathlength/2+1,pathlength);
path(1:2,1:pathlength)=1;%���·������ֵ
path(3:(pathlength/2+1),(pathlength/2):(pathlength/2+1))=1;
end