% Steepest Descent 
f=@(x) x(1)^2-x(1)*x(2)+x(2)^2;
grad_f=@(x) [2*x(1)-x(2);-x(1)+2*x(2)];
x0=[1;0.5];
alpha=0.01; 
tol=0.05;
itr=0;

gradient=grad_f(x0);
while norm(gradient)>tol
    x=x0-alpha*gradient;
    x0=x;
    gradient=grad_f(x0);
    itr=itr+1;
end
min_pt=x
fun_val=f(min_pt)
