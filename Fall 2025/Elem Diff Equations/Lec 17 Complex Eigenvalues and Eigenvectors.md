<u>ODEs</u> (Linear)

$$\cases{\frac{d}{dt}y(t) = Ay(t) \\ y(t_{0})=y_{0}}$$
$A_{n \times n}$

Typically, we would be having $2 \times 2$ matrices.

We looked at cases of when there are enough real eigenvectors to span $\mathbb{R}^{2}$ and when there are enough real generalized eigenvectors to span $\mathbb{R}^{2}$

---

Today, we would be looking at complex eigenvalues and complex eigenvectors.

---
Later,
1. $A = A(t)$
For example 
$A := \begin{pmatrix}cos(t) & e^{t} \\ sin(t^{2}) & 5t^{2}\end{pmatrix}$
2. $\cases{\frac{d}{dt} y(t) = Ay(t) + g(t) \\ y(t_{0})=y_{0}}$

---

> General side note: just how for $y'(t) = cy$, we guessed $y_{0}e^{ct}$ but if instead of a constant $c$, we had a function $f(t)$, we would, by separation of variables, guess $y_{0}e^{\int_{0}^{t}f(u)\,du}$
> Similarly, for matrices, if the matrix is comprised of a constant, we do guess the simple exponential, but for matrices like the above we must use separation of variables and in the full glory, use integration factor for matrices.
> So for $y'(t) = Ay(t)$ where $A = A(t)$, we would have to guess $y(t) = y_{0}e^{\int_{0}^{t}A(u)\,du}$


---

## Revising Complex numbers 

- we say $z \in \mathbb{C} \iff \exists a,b \in \mathbb{R}:$
	- $z = a+ib$ where $i:i^{2}=-1$
- $Re[z] = a \quad Im[z]=b$
- $(a+ib) + (c+id) := (a+c) + i(b+d)$
- $(a+ib)(c+id) := ac - bd + i(bc + ad)$
- The conjugate $\bar{z}:= a-ib$
	- ![[Elem Diff Equations/attachments/Drawing 25-10-29-02-15-07]]
	- $|z| := a^{2} + b^{2}$ is the physical length of the complex number.
	- $z \bar{z} = \bar{z} z = |z|^{2}$
	- if $z \neq 0, |z| > 0$ and $\frac{1}{z} = \frac{1}{z} \cdot \frac{\bar{z}}{\bar{z}} = \frac{\bar{z}}{|z|^{2}}$

---
### Examples 
$z := 5 - 2i$, $w := 3 + 4i$

then $z \bar{z} = (5-2i)(5+2i) = 29$
$\implies |z| = \sqrt{29}$

$\frac{w}{z} = w \frac{\bar{z}}{|z|^{2}} = \frac{7}{29} + i (\frac{26}{29})$

---

## Polar Coordinates 
![[Elem Diff Equations/attachments/Drawing 25-10-29-02-20-22|100%]]

---
So far, for linear ODEs, where $y'(t) = Ay(t)$
$\lambda$ eigenvalue,

we have guessed $y(t) = ce^{\lambda t}$

Say now $\lambda = a + i b$
Applying the same guess,

$y(t) = ce^{\lambda t} = c[e^{at} e^{ibt}]$
$\implies y(t) = ce^{at}[cos(bt) + i sin(bt)]$

Note, this is a complex valued function.

We initially define $y$ as an element in $\mathbb{R}^{2}$
so we must find a way to make our way back from $\mathbb{C} \to \mathbb{R}^{2}$

---

### Example 
![[Elem Diff Equations/attachments/Drawing 25-10-29-02-30-32|100%]]


---

- $3 \times 3$
Example:
$A:= \begin{bmatrix}0.8 & =0.6 & 0 \\ 0.6 & 0.8 & 0 \\ 0 & 0 & 1.07\end{bmatrix}$
$\lambda \in \set{1.07, 0.8 \pm 0.6i}$

So for odd dimensions, you can have eigenpairs, but you must have an odd number of real eigenvalues.

---

## Extracting out linearly independent vectors in $\mathbb{R}^{2}$  from our Complex Eigenvalues

$\frac{d}{dt}y(t) = Ay(t) \quad \bigstar$

Say $n=2$ and let $\lambda \in \mathbb{C}, v \in \mathbb{C}^{2}: A_{n \times n}v = \lambda v$

---

Then $e^{\lambda t}v$ solves $\bigstar$ BUT it is in $\mathbb{C}^{2}$

$\frac{d}{dt} e^{\lambda t} v = \lambda e^{\lambda t}v$

$Ay(t) = e^{\lambda t}Av = e^{\lambda t} \lambda v$

Works, but we need real solutions (linearly independent) that live in $\mathbb{R}^{2}$

---

Resolution:

Write 
- $\lambda = a + bi$, $a,b \in \mathbb{R}$
- $v = v_{Re} + i v_{Im}, \quad V_{Re},V_{Im} \in \mathbb{R}^{2}$

Euler's formula gives

$e^{\lambda t}v = e^{(a + ib)t}(v_{Re} + i v_{Im})$
$e^{\lambda t}v= e^{at} ( cos(bt) + i sin(bt))(v_{Re} + i v_{Im})$

---
![[Elem Diff Equations/attachments/Drawing 25-10-29-02-57-15|100%]]

