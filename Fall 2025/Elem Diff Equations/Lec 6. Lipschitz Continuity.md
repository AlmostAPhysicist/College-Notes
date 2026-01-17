So far, we have looked at ODEs of form 
$\cases{y'(t) = f(t,y(t))\\y(t_{0})=y_{0}}$

### Theorems to talk about today (hopefully)
We are going to look at intuition and proof of the following theorems that we then use to see if some ODEs have solutions, unique solutions, what kind of solutions, bounds, equilibrium points, etc.

1. If $f$ is continuous (in both $t$ and $y$) then $\exists$ local solution ($\exists \alpha>0: y(t) \text{ solves the ODE for } t \in [t_{0}, t_{0} + \alpha]$)
2. If is <u>Lipschitz</u> continuous, then $\exists$ Global solution ($y(t)$ solves ODE for $t>t_{0}$)
3. $f, \frac{\partial}{\partial y}f$ are continuous, then uniqueness holds.
4. $f, \frac{\partial}{\partial y}f$ are continuous, then comparison holds.

---

<u>Example:</u>
$f(y):=\sqrt{y}$
$f'(y) = \frac{1}{2\sqrt{y}}$ not bounded for $y$ near $0$.

---

> Being **differentiable** means that for all points at the function, the function must have a valid derivative.
> Being **continuously differentiable** means that the function you get after taking a derivative at all points must be continuous (i.e., the derivatives must not only exist, but must approach the same value as you take derivatives for arbitrarily close points.)
>
>The Fundamental theorem of calculus, i.e. $\int^{b}_{a} f'(x) dx = f(b)-f(a)$ holds only for continuously differentiable function
>
>The full Leibnitz Integral Rule, in general form for the integral of a function $f(x,t)$ is $$\frac{d}{dx}\int_{a(x)}^{b(x)} f(x,t)\,dt = f(x,b(x))\cdot b'(x) - f(x,a(x))\cdot a'(x) + \int_{a(x)}^{b(x)} \frac{\partial}{\partial x}f(x,t)\,dt$$

---

## Mean Value theorem and Lipschitz Continuity
$\frac{f(x)-f(y)}{x-y} = f'(z)$

![[Elem Diff Equations/attachments/Drawing 25-09-22-02-22-13|100%]]

---

## Uniqueness 
![[Elem Diff Equations/attachments/Drawing 25-09-22-02-48-16|100%]]


---

## Comparison 
![[Elem Diff Equations/attachments/Drawing 25-09-22-03-04-57|100%]]

