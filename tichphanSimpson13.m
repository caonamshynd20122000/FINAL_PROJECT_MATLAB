function kq = tichphanSimpson13(fx,a,b,N)
    h = (b - a) / N;
    kq = fx(a) + fx(b);
    for i = 1:1:N-1
        if mod(i,2) == 1
            kq = kq + 4 * fx(a + i * h);
        end
        if mod(i,2) == 0
            kq = kq + 2 * fx(a + i * h);
        end
    end
    kq = kq * (h / 3);
end