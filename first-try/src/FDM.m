% FDM - Frame Difference Mask
%Devolve sequencia de frames segmentados
function fdm = FDM( FD )

fdm = uint8((zeros(size(FD))));
for i = 1:size(FD,3)
   fdm(:,:,i) = uint8(im2bw(FD(:,:,i), 0.08)*255);
end
