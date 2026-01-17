Earlier, we were solving the Laplace equation for a box like configuration 

![[Electromagnetism/Lec 11. Working Further with the Poisson Equation|Lec 11. Working Further with the Poisson Equation]]

---

We learned that you can write a function $\displaystyle f(x) = \sum_{i=1}^ {\infty} A_{i}\phi_{i}(x)$
where $\phi_{n}(x) = sin(\frac{n \pi x}{a})$
and $\int_{0}^{a} \phi_{n} \phi_{m} dx = \cases{0 , \quad n \neq m \\ \frac{a}{2}, \quad n=m}$

$\int f \cdot \phi_{n} dx = A_{n} \int \phi_{n} \phi_{m} dx$

$\vec{A} = A_{x}\hat{x} + A_{y}\hat{y} + A_{z}\hat{z}$
$\hat{x} \cdot \vec{A} = A_{x}$
$\hat{x} \cdot \hat{y}$

Similarly, these functional bases $\phi_{n}$ are a set of complete functional bases that are orthogonal and whose linear combinations for an infinite sums can get you to ANY possible function.

---

We so far learnt about one such set of functions, i.e. $\phi_{n} = sin(\frac{n \pi x}{a})$ and $A_{m} = \frac{2}{a} \int_{0}^{a}V_{0}(y) sin(\frac{m \pi y}{a}) dy$

---

We would now look at a different kind of symmetric distribution and uncover a yet another complete and orthogonal set of bases functions called the **Legendre polynomials**.

![[Electromagnetism/attachments/Drawing 25-10-14-03-59-35|100%]]

---

## Example 
![[Electromagnetism/attachments/Drawing 25-10-14-04-50-11|100%]]
