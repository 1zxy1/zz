function [path,v,vmax]=car_turn(path,v,vmax,cartype,movedirect)
if lightphase==1%����ֱ��
    for i=1:W
        for j=1:L
            if(cartype(j,i)==1)%1�ų�����ֱ�е�ͨ������ת�ĵȴ���
                if(movedirect(j,i)==1)
                    [path,v,vmax]=car_forward(path,v,vmax);
                end
                if(movedirect(j,i)==2&&i+v(j,i)<=W/2+1)
                    v(j,i)=0;
                    path(j,i)=1;
                    path(j,W/2+2)=-2;
                end
            end
            if(cartype(j,i)==2)%2�ų�����ֱ�С���ת��ͨ����
                if(movedirect(j,i)==1)
                    [path,v,vmax]=car_forward(path,v,vmax);
                end
                 if(movedirect(j,i)==3&&i+v(j,i)==W/2)
                    v(j,i)=1;
                    path(j,i)=1;
                    path(j+1,i+v(j,i)+1)=-2;
                 end
            end
            if(cartype(j,i)==3)%3�ų�������ֱ�У���2�ų�����ת�����ĳ�����
                if j>2
                    [path,v,vmax]=car_forward(path,v,vmax);
                end
            end
            if(cartype(j,i)==4)
                    
                
            
    