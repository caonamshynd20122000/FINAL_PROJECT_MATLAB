function kq = tichPhanHinhThang_Func(fx,a,b,N)
   h = (b - a) / N;
    kq = fx(a) + fx(b);
    for i = 1:1:N-1
        kq = kq + 2*fx(a + i*h);
    end
    kq = kq * (h / 2); 
end