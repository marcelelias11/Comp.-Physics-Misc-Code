function y = fibonacci(N)
    y = %T
    i = 0
    b = 1
    c = 1
    d = []
    d(1) = [b]
    d(2) = [c]
    disp(b)
    disp(c)
    while i < N
        a = b+c
        b = c
        c = a
        d(i+2) = a
        disp(a)
        i = i+1
    end
endfunction
