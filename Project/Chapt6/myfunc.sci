function prob=myfunc(n,m,data,x)
for i=[1:n]
    s(i)=mean(data([1:m],i))
end
//disp(s)
for i=[1:n]
    for j=[1:m]
        d(j,i)=data(j,i)-s(i)
    end
end
for i=[1:n]
    for j=[1:n]
        sigma(i,j)=0;
        for k=[1:m]
            sigma(i,j)=sigma(i,j)+d(k,i)*d(k,j)
        end
        sigma(i,j)=sigma(i,j)/m;
    end
end
//disp(sigma)
de=det(sigma);
//disp(de)
in=inv(sigma);
//disp(in)
for i=[1:n]
    y(i)=x(i)-s(i)
end
disp(y)
quad=y*in*y';
//disp(quad)
prob=1/(sqrt(2*%pi))^n/sqrt(de)*exp(-0.5*quad)
//disp(normal)
endfunction
