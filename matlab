b_q15 = round(h2 * 2^15);   % scale sang Q15
b_q15 = int16(b_q15);      % chuyển sang kiểu số nguyên có dấu
% Ép kiểu để giữ nguyên bit pattern (số bù 2)
b_hex = dec2hex(typecast(b_q15, 'uint16'), 4);

% Chuyển thành x"xxxx"
hex_coeffs = arrayfun(@(i) sprintf('x\"%s\"', b_hex(i,:)), 1:length(b_hex), 'UniformOutput', false);

% Xuất chuỗi
coeff_str = strjoin(hex_coeffs, ', ');
disp(coeff_str);
