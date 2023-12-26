function kq = tichphanSimpson38(fx,a,b,N)
    h = (b - a) / N;
    kq = fx(a) + fx(b);
    for i = 1:1:N-1
        if mod(i,3) ~= 0
            kq = kq + 3 * fx(a + i * h);
        else
            kq = kq + 2 * fx(a + i * h);
        end
    end
    kq = kq * ((3 * h) / 8);
end