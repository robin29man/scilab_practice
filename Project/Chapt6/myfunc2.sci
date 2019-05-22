function prob=myfunc2lo(n,m,data,x)
for i=[1:n]
    s(i)=mean(data([1:m],i))
end
prob=0
for i=[1:n]
    prob=prob+(x(i)-s(i))^2    
end
prob=sqrt(prob)
endfunction
