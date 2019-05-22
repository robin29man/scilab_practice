function y=FF(x,p)
  y=p(1)*x^2+p(2)*x+p(3);
endfunction
timer();
X=[1:64];
g=Value(:,3)';
Y=g([1:64]);
Z=[Y;X];

function e=G(p, z)
  y=z(1)
  x=z(2)
  e=y-FF(x)
endfunction
p0=[-1;1;0.7];
[p,err]=datafit(G,Z,p0)
timer()
plot(Y,'bo');

plot(FF(X));
timer()
