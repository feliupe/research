% FD - Frame Difference
% Produz a imagem amostraS, resultado da subtra��o de um frame com o
% imediatamente anterior

function fd = FD(amostra)

I = 1:size(amostra,3)-1;
fd = uint8(zeros(size(amostra)));
fd(:,:,I+1) = uint8(abs(amostra(:,:,I+1) - amostra(:,:,I))); % imabsdiff(X,Y)

end
