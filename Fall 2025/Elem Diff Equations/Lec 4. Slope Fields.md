$$\cases{y'(t) = f(t, y(t))\\y(t_{0})=y_{0}}$$

Again, above is a general form of an ODE.
Since the function $f$ takes in $2$ inputs, it maps $\mathbb{R}^{2} \to \mathbb{R}$, $y_{0} \in \mathbb{R}$

---

A slope field, really, is plotting the slope $y'(t)$ in a $t-y$ graph. So Really, by definition, you are just plotting $f(t, y(t))$ here. 

To plot a slope field on a $2D$ plot, what we simply do is, we plot line segments that have a run of $1$ and rise of $y'(t)$. Which means that the slope field line segment itself will have a $\frac{rise}{run} = y'(t) = \text{slope at the point}$


#definition $y^{*}$ is an equilibrium solution of $y' = f(y)$ iff $f(y^{*})=0$.

<u>example</u>:
$y' = ky$
$y^{*} = 0$

---
### Examples 
$y' = (1-y)y$
$y* \in \set{0, 1}$

![[Elem Diff Equations/attachments/Drawing 25-09-15-02-17-27]]

Say $y(t) \in (0, 1)$
$y'(t) > 0$

Say $y(t)<0$
$y'(t) < 0$

Say $y(t) > 1$
$y'(t) < 0$

Conjecture:
$y_{0} \in (0,1)$   $\lim_{t \uparrow \infty} y(t) = 1$
$y_{0} < 0$   $\lim_{t \uparrow \infty} y(t) = - \infty$
$y_{0} > 1$   $\lim_{t \uparrow \infty} y(t) = 1$

---

**Q.** Could we reach an equilibrium in finite time? 
$\cases{y'(t) = (1-y(t))y(t) \\ y_{0}=2}$

Really, what you are looking for, is whether for the solution of the ode, $\exists t^{*} > 0 : y(t^{*})=1$

Well, let's assume yes. And see if we get a contradiction or not.

Consider the ODE $\cases{y'(t) = (1-y(t))y(t) \\ y(t^{*})=1}$

There's a trivial solution to this ODE, 
$y(t)=1$

but you can also use the previous solution.

So uniqueness fails.

---

>As long as the derivative of a function doesn't explode near $y_{0}$, is can have unique solutions. But when it explodes, you. 
>If $|y'| < k, k \in \mathbb{R}$ (or $k$ can also be some special functions) is bounded, THEN you would have unique solutions for your ODEs.

---

**Q:** Consider:
$\cases{y'(t) = f(y(t)) \\ y(0)=1}$

Could $y(t)$ oscillate?

![[Elem Diff Equations/attachments/Drawing 25-09-15-02-48-05]]



---

### Ex 
$\cases{y'(t) = ky(t)^{2} \\ y_{0}=1}$

![[Elem Diff Equations/attachments/Drawing 25-09-15-03-02-51]]