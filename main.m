clc;
clear all;
close all;

timer=50;        %时钟次数
pathlength=60;    %道路长度
vmax=4;           %最大速度
propcreate=0.2;  %车辆生成概率
propslow=0.1;     %随机慢化概率
h=NaN;

[path,v]=new_path(pathlength);%生成道路矩阵
[path,v,vmax]=create_cars(path,v,propcreate,vmax);%生成车辆

for t=1:timer;
    PATH=path;
    h=create_path(PATH,h);
    [path,v,vmax]=car_speed(path,v,vmax,propslow);%规定车辆速度等属性
    [path,v,vmax]=car_forward(path,v,vmax);%车向前开
    [path,v,vmax]=cars_enter(path,v,vmax,propcreate);%新车辆进入
end