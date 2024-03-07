%% This code is used for translating the image by desired pixels in x and y directions
%I1 is the original image and I2 is the shifted image
% (m1,n1) is the size of the image
% px and py refers to the amount of translation in x and y direction
% respectively
%%
I1     = imread('I1_vortexpair_dt0p03.tif');                                             % Load image 1
I1     = I1(:,:,1);  
m1 = size(I1,2);
n1 = size(I1,1);
I2 = zeros(n1,m1);
px = 2;
py = 2
for i=1:m1
    for j=1:n1
        i_shift=i+px;
        j_shift=j+p2;
        if (i_shift<=m1) && (i_shift >=1) && (j_shift<=n1) && (j_shift>=1)
            I2(i_shift,j_shift)=I1(i,j);           
        else
            I2(i,j)=I1(i,j);
        end
    end
end
% 
% for n = 1:i
%     for m = 1:j
%         if (
%         I2(n+4,m) = I1(n,m);
%         else
%             
%         end
%         
%     end
% end
% 

I2 = uint8(I2);
  outputFilename = 'trans2px.tif';
   imwrite(I2, outputFilename);