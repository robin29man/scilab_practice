function [y,q]=movavew(x,m,w)
    n=length(x)
    y=zeros(1:n-2*m)
    q=0
    for i=1:n-2*m
        y(i)=0
        for j=1:2*m+1
            y(i)=y(i)+x(i+j-1)*w(j)
        end
        q=q+abs(x(i+m)-y(i))
    end
    q=q/(n-2*m)
endfunction
