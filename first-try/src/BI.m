function Bi = BG(Im, SI)

Bi = zeros(size(SI));
temp = zeros(size(SI,1),size(SI,2));
temp1 = zeros(size(SI,1),size(SI,2));
Im_Frame = zeros(size(SI,1),size(SI,2));
Bi_frame = zeros(size(SI,1),size(SI,2));

for i = 2:size(Bi,3)

    Bi_frame = Bi(:,:,i-1);
    temp = SI(:,:,i);
    v = temp == i-1;
    v1 = temp ~= i-1;

    temp(v) = 255;
    temp(v1) = Bi_frame(v1);

    Bi(:,:,i) = temp;

end
