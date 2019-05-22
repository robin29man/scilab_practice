function y=FF(x,p)
  y=p(1)*sin(p(2)*x)+p(3);
endfunction
timer();
X=[1:128];
Y=Value(:,3)';
Z=[Y;X];

function e=G(p, z)
  y=z(1)
  x=z(2)
  e=y-FF(x,p)
endfunction

p0=[10;0.05;0.7];
[p,err]=datafit(G,Z,p0)


timer()
plot(Y,'bo');

plot(FF(X,p));
timer()
