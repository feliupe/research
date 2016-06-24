function [] = salva_frames(var)

t = size(var,4);
imshow(var(:,:,:,1));
for k = 1:t
    name = num2str(k,'%d.png');
    imwrite(var(:,:,:,k),name,'png');
end