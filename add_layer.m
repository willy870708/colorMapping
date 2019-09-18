for i  = 1:400
    image = mat(1:400,i);
    label = mat(401,i);
    if(label == 1)
        image = reshape(image,[1,400]);
        ALPHA_PARAM = 0.6;%透明度
        image = double(image);
        layer = double(layer);%選一張20*20的單色影像
        combine_image = zeros(20,20,1); 
        for height = 1 : 20 
            for width = 1 : 20
                combine_image(width,height,1) = image(width,height,1)*ALPHA_PARAM + layer(width,height,1)*(1-ALPHA_PARAM);
            end
        end
        %imwrite(combine_image)
    else
        image = reshape(image,400,1);
        %imwrite(image)
    end
end
    