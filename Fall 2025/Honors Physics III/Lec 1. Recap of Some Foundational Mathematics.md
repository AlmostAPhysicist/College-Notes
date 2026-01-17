![[Honors Physics III/attachments/Divergence, Curl and Stokes Theorem .pdf]]


You would also need to know some basics of 
- Taylor Expansions
- Differential Equations and some standard solutions 
	- eg: $\ddot{y} = -k^{2} y$
- Some general methods to find solutions to differential equations 
	- Separation of Variables
	- "ansatz" (a German word meaning "approach" or "guess")
	- You need to know what are the required pieces of information to solve differential equations.
		- For instance, an $nth$ order differential equations in $k$ variables, you would require $n$ initial conditions for all $n$ variables, therefore $n \cdot k$ initial conditions
			- For example, a 2nd order differential equation with two variables would be solvable if you have 2 initial conditions for both variables (and hence 4 total intial conditions)


### 1D Wave Equation 

$$\frac{1}{X} \frac{\partial^{2}X}{\partial x^{2}} = \frac{1}{c^{2}} \frac{1}{T} \frac{\partial^{2}T}{\partial t^{2}} \equiv -k^2$$
![[Honors Physics III/attachments/Drawing 25-09-03-12-59-30]]


![[Honors Physics III/attachments/Drawing 25-09-03-01-01-43]]
	Phae vekoxity: Vdkocity at which I need to move to see a **constant** phase.
	![[Honors Physics III/attachments/Drawing 25-09-03-01-04-16]]


![[Honors Physics III/attachments/Drawing 25-09-03-01-05-48]]




**Homogeneous Linear Differential Equations**
(Homogeneous meaning that there is no constant term of the differential equations
$a_{0}(x)f + a_{1}(x)f' + a_{2}(x)f'' + \dots + a_{n}(x)f^{n} = 0$
Linear meaning none of the differential terms are of higher degree than one)


We like these kinds of differential equations because their linearity leads to a nice extension to the superposition principle.
If $f_{1}, f_{2}, f_{3}$ are solutions of a linear differential equations, then any linear combination of those is also a solution.

$$\psi(x,t) = \sum_{n} C_{n}f_{n}(x,t)$$


---

# Recitation
## Scalar and Vector Fields 
You know the general gist. A field assigns a certain mathematical object (can be anything... Scalar, Vector, anything) to each point in space.

![[Honors Physics III/attachments/Drawing 25-09-05-12-23-32 |100%]]

### Examples 
$T(x,y) = \frac{70}{x^{2}+y^{2}+1} = \frac{70}{r^{2}+1}$
$T_{max} = \text{T when denominator is lowest} = T(0,0) = 70$
$T_{min} = \text{T when denominator is highest} = T(\infty, \infty) = 0$

![[Honors Physics III/attachments/Drawing 25-09-05-12-38-21|100%]]



![[Honors Physics III/attachments/Drawing 25-09-05-12-50-52|100%]]




## Differential Equations 
when $\frac{d^{n}f}{dx^{n}} \propto f$, often, $f$ has a form of an exponential function $ae^{bx}$

![[Honors Physics III/attachments/Drawing 25-09-05-01-15-36|100%]]







