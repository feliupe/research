function F = BDM( A )
%Devolve sequencia de frames segmentados

F =zeros(size(A));
for i = 1:size(A,3)
   F(:,:,i) = im2bw(A(:,:,i), graythresh(A(:,:,i)));
end
