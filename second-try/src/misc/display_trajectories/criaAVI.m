%Cria um video AVI
function criaAVI(amostra,nome)

for i = 1:size(amostra,4)
    imshow(amostra(:,:,:,i));
    F(i) = getframe;
end

 movie2avi(F,nome);
 clear F;