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
     image1 = colormapping_data(1:400,i); %第一個20*20區塊
    image1_reshape = reshape(image1,[20,20]); %將1*400轉乘20*20
     image1_new = image1_reshape*255; %因為原本數值有正規化0-1之間，因此要乘回來
     image1_new = uint8(image1_new); %上一行顯示的數值在matlab的type是double型式，但是要化成灰階就要轉乘uint8
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
        
