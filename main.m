clc;
clear all;
close all;

timer=50;        %ʱ�Ӵ���
pathlength=60;    %��·����
vmax=4;           %����ٶ�
propcreate=0.2;  %�������ɸ���
propslow=0.1;     %�����������
h=NaN;

[path,v]=new_path(pathlength);%���ɵ�·����
[path,v,vmax]=create_cars(path,v,propcreate,vmax);%���ɳ���

for t=1:timer;
    PATH=path;
    h=create_path(PATH,h);
    [path,v,vmax]=car_speed(path,v,vmax,propslow);%�涨�����ٶȵ�����
    [path,v,vmax]=car_forward(path,v,vmax);%����ǰ��
    [path,v,vmax]=cars_enter(path,v,vmax,propcreate);%�³�������
end