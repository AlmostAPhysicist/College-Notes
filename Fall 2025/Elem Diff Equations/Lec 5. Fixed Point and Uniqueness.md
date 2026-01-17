$$\cases{y'(t) = f(t, y(t)) \\ y(0) = y_{0}}$$

- Local 
	- $\exists \epsilon > 0 : t \in [t_{0} - \epsilon, t_{0} + \epsilon] or t \in [t_{0}, t_{0} + \epsilon]$
- Global 
	- $\forall t \in \mathbb{R} \, or \, \forall t \in [0, \infty]$

<u>Example:</u>
$f(t,x) := k_{0} + k_{1}x$ for constraints $k_{0}, k_{1} \in \mathbb{R}$
Global existence (Affine differential equation… you solved this)

$y'(t) = k_{0} + k_{1}y(t)$
$\implies \frac{d}{dt}e^{-k_{1}t}y(t) = e^{-kt}k_{0}$

Integrating, 
$e^{-k_{1}t}y(t) = y_{0} + \int_{0}^{t} e^{-kt'} k_{0}dt'$
$\implies y(t) = -e^{k_{1}t}(y_{0} + \int_{0}^{t} e^{-kt'}k_{0}dt')$

Works for ALL $t \in \mathbb{R}$


<u>Example for Local Existence only</u>
$f(t, x) = x^{2}$

(notice, $y'(t) = -y(t)^{2}$ and $y(0)=1$ works globally ![[Elem Diff Equations/attachments/Drawing 25-09-17-02-14-34]]
)


So if $y'(t) = y(t)^{2}$
and $y(0) = 1$

Here, we would get a solution $y(t) = \frac{1}{1-t} = (1-t)^{-1}$
For this, $y'(t) = y(t)^{2}$
BUT, the solution blows up for $t \to 1$
$\implies$ the solution only works for $t \in [0, 1)$

---
![[Elem Diff Equations/attachments/Drawing 25-09-17-02-18-05|100%]]

## Uniqueness and Reaching equilibrium Points 

![[Elem Diff Equations/attachments/Drawing 25-09-17-02-32-04|100%]]

---


Ok, so you can find different solutions and you can use contradictions and everything for know if something has equilibrium points or not.

But, the basis of a contradiction is the assumption of the differential equation is unique.

**How do you know if a differential equation is unique or not so that you can use that information**

---

## Peano Thm. 
![[Elem Diff Equations/attachments/Drawing 25-09-17-02-41-39|100%]]

---

## Fixed Point 
#definition $x^{*} \in \mathbb{R}$ is a fixed point for $f:\mathbb{R} \to \mathbb{R}$ iff $f(x^{*})=x^{*}$

(So any input to a function that maps to itself. i.e. sits on $y=x$)

![[Elem Diff Equations/attachments/Drawing 25-09-17-02-52-17|100%]]

---

![[Elem Diff Equations/attachments/Drawing 25-09-17-03-10-22|100%]]
