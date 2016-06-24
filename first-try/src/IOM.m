function Iom = IOM(Bi, Fdm, Bdm)

Iom = zeros(size(Bdm));
temp1 = zeros(size(Bdm,1),size(Bdm,2));
temp2 = zeros(size(Bdm,1),size(Bdm,2));
temp3 = zeros(size(Bdm,1),size(Bdm,2));

for i = 1:size(Iom,3)

    temp2 = Bdm(:,:,i);
    temp3 = Fdm(:,:,i);
    temp1 = Bi(:,:,i);
    v = temp1 == 255;
    v1 = temp1 ~= 255;

    temp1(v) = temp2(v);
    temp1(v1) = temp3(v1);

    Iom(:,:,i) = temp1;

end
