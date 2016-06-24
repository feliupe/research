%SI - Stationary Index
%Calcula a probabilidade de um pixel estar no BG
function Si = SI( FDM )

    Si = uint8(zeros(size(FDM)));
    fdm_ = uint8(zeros(size(FDM,1),size(FDM,2)));
    si_ = uint8(zeros(size(FDM,1),size(FDM,2)));

    for i = 2:size(Si,3)
        fdm_ = FDM(:,:,i);
        si_ = Si(:,:,i-1);
        background_index = fdm_ == 0;
        object_index = fdm_ ~= 0;
        fdm_(background_index) = si_(background_index) + 1;
        fdm_(object_index) = 0;
        Si(:,:,i) = fdm_;
    end

end
