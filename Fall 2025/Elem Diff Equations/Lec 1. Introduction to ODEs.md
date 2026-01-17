## ODEs
Ordinary Differential Equations 

#tidbit 
>There are many extensions to this such as PDE, SDE, BSPE, FBSPE

---

### Some Basics on Functions
$f: \mathbb{R}^{n} \to \mathbb{R}^{m}$
(Domain to Co-Domain)

$f$'s range: $rng := \set{f(x): x \in \mathbb{R}^{n}} \subseteq \mathbb{R}^{m}$

- The range of $e^{x}$ for instance, would be $(0, \infty) \subsetneq \mathbb{R}$
- Similarly, $rng(f)$ for $f(x)=sin(x)$ would be $[-1, 1] \subsetneq \mathbb{R}$


**Onto**: if given any value in the Codomain, there exists some pre-image/input in the domain that gives you that output value.
($\forall y \in \mathbb{R}^{m} \exists x \in \mathbb{R} : f(x) = y$)

**One to One**
We say $f$ is one to one if and only if $f(x)=f(y) \implies x=y$
I.e., an output value maps back to only a single input in the domain

1. 
	$e^{x}= e^{y}$
	$ln(e^{x}) = ln(e^{y})$
	$x=y$ and therefore this is a one-to-one function
2. $sin(x)=sin(y)$ 
	$sin(0)=sin(\pi)$ yet, $0 \neq \pi$
	So there's a counter example, hence this is NOT one to one.

> The art of really figuring out whether something is true or false, and not knowing, how to prove either or come up with a counter example, really, is what makes mathematics an art :)

### Linear Differential Equations 
$\cases{y'(t) = ky(t) \\ y(0)=y_{0}}$

Let $y_{1}$ and $y_{2}$ be 2 solutions to the differential equation.

let $y_{3} := c_{1}y_{1} + c_{2}y_{2}$
$y_{3}' = c_{1}y_{1}' + c_{2}y_{2}' = c_{1}ky_{1} + c_{2}ky_{2} = k(c_{1}y_{1} + c_{2}y_{2}) = ky_{3}$

Ahaa! Which means $y_{3}$ is also a solution to the differential equations.

That is why for linear differential equations, any linear combination of solutions to the differential equations is also a solution to the differential equations.

---

### Affine 
$\cases{y'(t) = ky(t) + k_{0} \\ y(0)=y_{0}}$

for this differential equation and initial condition, let's assume $y_{1}$ and $y_{2}$ to be the solutions to the differential equation.
Then,
$y_{3}' = c_{1}y_{1}'(t) + c_{2}y_{2}'(t) = c_{1}(ky_{1}(t) + k_{0}) + c_{2}(ky_{2}(t) + k_{0})$
$= ky_{3}(t) + k_{0}(c_{1} + c_{2})$

Because of the constants, the constant term for the linear combination of the solutions adds up and is therefore not the same as what is needed to be the solution to the differential equation. We would therefore not get linear combinations to be solution to differential equations for any set of solutions for equations with a constant.


### Finding solutions to our examples
For the Linear Differential Equation in hand, you could guess a function that when differentiated, gives you the same function as your function, and a constant in the front.

One of such functions is $e^{kx}$
$f(x) = y = e^{kx} \implies y'(t) = ky(t)$
But since you want $y(0)=y_{0}$
Therefore, the actual solution to the differential equation would be $y(t) = y_{0}e^{kx}$

> Note: The solution to the Linear ODE is NOT a linear function. The solution we found in fact, is exponential. The reason you call it linear is that the linear combinations of the solutions are also solutions (so the right-hand side, or $y$ values, are linear... or sit on a line passing through the origin.)
> ![[Elem Diff Equations/attachments/Drawing 25-09-03-03-19-01]]

Note: Linear functions necessarily need to pass through the $(0,0)$ point. So not all 1st order equations are linear. Instead, they are Affine. Being linear has an additional constraint.


General Form:
$\cases{y'(t) = f(t, y(t)) \\ y(0) = y_{0}}$




