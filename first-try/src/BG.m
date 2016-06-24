function Bg = BG(Im, SI)

Bg = uint8(zeros(size(SI)));
si = uint8(zeros(size(SI,1),size(SI,2)));
im_frame = si;
bg_frame_ = si;

for i = 2:size(Bg,3)

    im_frame = Im(:,:,i);
    bg_frame_ = Bg(:,:,i-1);
    si = SI(:,:,i);
    max_value_index = si >= 15;
    not_max_value_index = si < 15;
    si(max_value_index) = im_frame(max_value_index);
    si(not_max_value_index) = bg_frame_(not_max_value_index);
    Bg(:,:,i) = si;

end
