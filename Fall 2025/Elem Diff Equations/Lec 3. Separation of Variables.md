$$\cases{y'(t) = f(t, y(t)) \\ y(0)=y_{0}}$$
### Special Cases 
1. Quadratic 
	- $f(t,x) := k_{0} + k_{1}x + k_{2}x^{2}$
2. Quadratic with time dependent coefficients 
	- $f(t,x) := k_{0}(t) + k_{1}(t)x + k_{2}(t)x^{2}$
3. Seperable 
	- $f(t,y) = g(t)h(y)$
	1. $f(t,y) = g(t)$
		- trivial 
		- $y'(t) = g(t)$
		- $\implies y(t) = y_{0} + \int_{0}^{t} g(u)du$
	2. Antonomous 
		- $f(t,y) = h(y)$

![[Elem Diff Equations/attachments/Drawing 25-09-10-02-12-52|100%]]

### Trick for seperable ODEs

$y'(t) = G(t)h(y(t))$
$\int \frac{\frac{d}{dt}(y(t))}{h(y(t))}dt = \int g(t) dt$
So cancelling the dt, you get 
$\int \frac{d(y(t))}{h(y(t))} = \int g(t) dt$
let $y(t) = u$ then the integral is simply just
$\int \frac{du}{h(u)}= \int g(t) dt$

(although this is kinda hand wavy and may cause problems for some functions, this CAN for most functions give us a great guess for a lot of functions)

![[Elem Diff Equations/attachments/Drawing 25-09-10-02-35-15|100%]]

![[Elem Diff Equations/attachments/Drawing 25-09-10-02-40-00|100%]]

![[Elem Diff Equations/attachments/Drawing 25-09-10-02-49-58|100%]]
