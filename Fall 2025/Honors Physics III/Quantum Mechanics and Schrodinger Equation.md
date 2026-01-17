
## Why have complex numbers?

You want to construct functions that are eigenfunctions of the differential operator 

$\frac{\partial}{\partial x}(f(x)) = \lambda f(x)$

Now there already exists a function $e^{kx}$ which satisfies that with the eigenvalue $k$.

$\frac{\partial}{\partial x}(e^{kx}) = k e^{kx}$


But you want oscillatory functions.

So how do you construct them?

Well, $\nabla_{x}sin(x) = cos(x)$
$\nabla_{x} cos(x) = - sin(x)$

so ($\nabla_{x} (Acos(x)+Bsin(x) = k(Acos(x) + Bsin(x))$)
you would notice that for any real values $A$ or $B$, it is not satisfied.

But! 
$\nabla_{x}(cos(x) + i sin(x)) = icos(x) - sin(x) = i(cos(x)+isin(x))$

Hence, $\psi(x,t) = A(cos(x) + i sin(x))$ is an eigenfunction of the gradient operator.

---

## Operators 

Operators like $\nabla_{x}$ or in general $\hat{Q}f_{i}(x) = q_{i}f_{i}(x)$ that give a physical, real quantity (the eigenvalue is real) are called **hermition**.

$f_{i}(x)$ are complete sets of orthogonal basis.
$q_{i}$ are the eigenvalues of the function: our observables values.


---

$\psi(x) = \sum a_{i} f_{i}(x)$

$\braket{f_{i}|f_{j}} = \int f_{i}^{*}(x)f_{j}(x)\,dx$


Note! Inner products are not commutative.

$\braket{u|v} = (\braket{v|u})^{*}$
The commutative are complex conjugates of each other

---

## Specific operators
$\hat{p} = -i \hbar \frac{\partial}{\partial x}$
$\hat{E} = -i \hbar \frac{\partial}{\partial t}$
$\hat{L_{z}} = -i \hbar \frac{\partial}{\partial \phi}$


it turns out that eigenfunctions for all these operators are $f_{n}= \frac{e^{in\phi}}{\sqrt{2\pi}}$ (normalized eigenfunction) where $\phi$ is the observable.

It is really the eigenfunction of only the last operator, but all eigenfunctions would have the same structure.

As an example, $\hat{L}_{z} f_{n}(\phi) = i \hbar \frac{\partial}{\partial \phi} = -i \hbar \frac{\partial}{\partial \phi} (\frac{e^{in\phi}}{\sqrt{2\pi}}) = n \hbar f_{n}(\phi)$

Hence, $n \hbar$ is the eigenfunction of the Angular Momentum operator! Which is also what we physically measure.

---

## Proving that the functions are orthogonal
$\braket{f_{n}|f_{m}} = \int_{0}^{2\pi} (\frac{e^{in\phi}}{\sqrt{2\pi}})^{*} \cdot \frac{e^{im\phi}}{\sqrt{2\pi}}$
Note, the integral is from $0$ to $2\pi$ since the observable parameter $\phi$ is defined from $0$ to $2\pi$ for our observable... it is just what angle around the circle are you are.


if $m \neq n$
$\braket{f_{n}| f_{m}} = \frac{1}{2\pi} \int_{0}^{2\pi} e^{i(m-n)\phi}\, d\phi = \frac{1}{2\pi i(m-n)}(e^{i(m-n)2\pi} - e^{i(m-n)0}) = k(1-1) = 0$

if $m=n$,

your inner product becomes $\frac{1}{2\pi}\int_{0}^{2\pi} 1 \, d\phi = 1$
Ahaa!

So $\int f_{n}^{*} \cdot f_{m} d\phi = \cases{0, \quad n \neq m \\ 1, \quad n = m}$

---

![[Honors Physics III/attachments/Drawing 25-10-31-12-58-44|100%]]



---

$$\hat{Q} f_{i}(x) = q_{i}f_{i}(x)$$
$$\psi(x) = \sum_{i}a_{qi}f_{qi}(x)$$

There's a very important distinction between $a_{i}$ and $q_{i}$.

$q_{i}$ is the eigenvalue when an operator $\hat{Q}$ is applied on your eigenfunction, which axiomatically, forms the measurement basis (you measurement will be one of these $q_i$'s within your experiment).

$a_{i}$ is the weight of each eigenfunction when decomposing your wavefunction $\psi(x)$.


So in it's full form, 

$\psi(x) = a_{1}f_{1}(x) + a_{2}f_{2}(x) + \dots$

Then $\hat{Q} \psi(x) = \hat{Q} (a_{1}f_{1}(x) + a_{2}f_{2}(x) + \dots)$

which, given that the operator is linear would be:

$\implies \hat{Q} \psi(x) = \hat{Q} a_{1}f_{1}(x) + \hat{Q}a_{2}f_{2}(x) + \dots = a_{1}q_{1}f_{1}(x) + a_{2}q_{2}f_{2}(x) + \dots$

i.e. $\hat{Q} \psi(x) = \sum q_{i} (a_{i}f_{i}(x))$

$a_{i}f_{i}(x)$ is the component of the wavefunction in a functional basis, times that functional basis.

$a_{i}$ is the projection of the wavefunction in a functional basis, i.e. $a_{i} = \braket{f_{i}|\psi}$


---
![[Honors Physics III/attachments/Pasted image 20251031143807.png]]
![[Honors Physics III/attachments/Pasted image 20251031143753.png]]


---

Of course then since the probabilities are given by $|a_{i}|^{2}$,
$\sum_{i} |a_{i}|^{2} = 1$

Hence, the projections of $\psi$ onto the basis function must be such that the projections all combined squared and added up give $1$.

So $\psi$ must be normalized to be a unit vector within our functional basis.

---

- $\psi$ must be normalized
- must be continuous (or else, you would be jumping from one point to the other, which would take infinite energy)
- $\nabla \psi$ must be continuous
- $\nabla^{2}\psi$ must be defined validly since you must have the existence of a solution

![[Honors Physics III/attachments/Pasted image 20251031144701.png]]
![[Honors Physics III/attachments/Pasted image 20251031144503.png]]
![[Honors Physics III/attachments/Pasted image 20251031144910.png]]


Notice, there is no solution for $E_{0}$.
The reason energy can not be zero, conceptually, is that since we know that the particle MUST be between $0$ and $L$, we know something about its position. Meaning we can not precisely know it's energy. So zero point energy would not be existent.

Energy is never zero.

![[Honors Physics III/attachments/Pasted image 20251031145224.png]]

---

![[Honors Physics III/attachments/Pasted image 20251031150954.png]]
![[Honors Physics III/attachments/Pasted image 20251031151013.png]]
![[Honors Physics III/attachments/Pasted image 20251031151128.png]]

![[Honors Physics III/attachments/Pasted image 20251031151202.png]]

![[Honors Physics III/attachments/Pasted image 20251031151220.png]]
![[Honors Physics III/attachments/Pasted image 20251031151230.png]]
![[Honors Physics III/attachments/Pasted image 20251031151245.png]]
