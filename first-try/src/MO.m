function M = MO(Fdm, Bdm, Bi, Iom)

    M = zeros(size(Fdm));
    temp = zeros(size(Fdm,1),size(Fdm,2));
    temp1 = temp;
    temp2 = temp1;
    temp3 = temp2;

    for i = 1:size(M,3)
        temp = Fdm(:,:,i);
        temp1 = Bdm(:,:,i);
        temp2 = Bi(:,:,i);
        temp3 = Iom(:,:,i);

        M(:,:,i) = temp &temp1 &temp2 & temp3 ;
    end
    
end
