function [dx]= continuousSolver(t, x, A)

n = size(A,1);

for ii=1:n
    u(ii) = 0;
    for jj = 1:n
        u(ii) = u(ii) + A(ii,jj)*(x(jj)-x(ii));
    end
    dx(ii) = u(ii);
end
dx=dx';
return
