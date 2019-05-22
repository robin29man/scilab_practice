L=4;
coef=0.125*sqrt(2);
g(1)=coef*(1+sqrt(3));
g(2)=coef*(3+sqrt(3));
g(3)=coef*(3-sqrt(3));
g(4)=coef*(1-sqrt(3));
disp('g')
disp(g)
disp('h')
for k=[1:4]
    h(k)=(-1)^(k+1)*g(L-k+1);
end
disp(h)
for t=[1:N/2]
    s=N-L/2+2*(t-1)+1;
    if(s>N)
        s=s-N;
    end

    d(t)=h(1)*y(s);
    a(t)=g(1)*y(s);
    for k=[2:L}
        s=s+1;
        if(s>N)
            s=s-N;
        end
        d(t)=d(t)+h(k)*y(s);
        a(t)=a(t)+g(k)*y(s);
    end
end
disp('details')
disp(d)
disp('approximation')
disp(a)
