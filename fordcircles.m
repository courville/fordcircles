pkg load geometry

figure(1);
clf;
hold on;
axis ([0, 0.5, 0, 0.26], "equal");

grid on;
title ("Cercles de Ford et suites de Farey");
xlabel ("x");
ylabel ("y");


function cford (n)
% dessin des cercles de Ford
% basé sur les suites de Farey des fractions irréductibles
  p=0;q=1;c=1;d=n;
  drawCircle(p/q, 1/(2*q^2), 1/(2*q^2));
  while(c<n)
    k=round((n+q)/d);
    e=k*c-p;f=k*d-q;
    p=c;q=d;c=e;d=f;
    drawCircle(p/q, 1/(2*q^2), 1/(2*q^2));
  endwhile
endfunction

cford(32);
print -deps cford.eps
print -dsvg cford.svg
