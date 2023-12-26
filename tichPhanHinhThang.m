function kq = tichPhanHinhThang(xa,ya)
N = length(xa);
result = 0;
    for i = 2 : N
        result = result + (ya(i) + ya(i - 1)) * (xa(i) - xa(i-1)) / 2;
    end
kq = result;
end