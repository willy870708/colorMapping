clear all;close all;
load('C:\Users\dl\Desktop\code\data\colormapping_data.mat')
for i = 1 : 400
    image = colormapping_data(1:400,i);
    label = colormapping_data(401,i);
    if(label == 1)
        colormapping_data(1:400,i) = 1;
    end
end

for i = 1:400    
     image1 = colormapping_data(1:400,i); %�Ĥ@��20*20�϶�
    image1_reshape = reshape(image1,[20,20]); %�N1*400�୼20*20
     image1_new = image1_reshape*255; %�]���쥻�ƭȦ����W��0-1�����A�]���n���^��
     image1_new = uint8(image1_new); %�W�@����ܪ��ƭȦbmatlab��type�Odouble�����A���O�n�Ʀ��Ƕ��N�n�୼uint8
    %image1_flip = flip(image1_reshape,2);
     %image1_flip = reshape(image1_flip,[400,1]);
     %temp = system2_row(401:402,i)
     %system2_row(401:402,i+639) = temp;
     %system2_row(1:400,i+639) = image1_flip
     %imshow(image1_new);
     %set(gcf,'position',[0,0,20,20]);
     %axis normal;
     imwrite(image1_new,['image_' , num2str(i,'%03d'),'.jpg']);
 end
        
