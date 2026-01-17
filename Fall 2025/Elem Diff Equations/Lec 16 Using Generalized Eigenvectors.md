So we have our Eigenvector for a $2 \times 2$ matrix. And often the span of the eigenvalue with algebraic multiplicity equal to 2 is just 1 dimensional.

$\det(A - \lambda I) = (\lambda - \lambda_{0})^{2} = 0$
Characteristic polynomial for the Matrix. It just so happens to be that we can replace the matrix with lambda here.


$(A - \lambda_{0}I)^{2} = 0$

So it must map everything to $0$.

But we know $(A-\lambda_{0}I)$ maps the span of the eigenvectors corresponding to $\lambda_{0}$ to zero. I.e., for any vector in $H_{\lambda_{0}}$, $A-\lambda_{0}I$ maps it to zero.

But that means, since in the next iteration, everything maps to zero, $(A-\lambda_{0}I)$ must be mapping things in $\mathbb{R}^{2} - H_{\lambda_{0}}$ to $H_{\lambda_{0}}$!

(As we saw in the video.)

---

Therefore, For generalized eigenvectors,

$(A-\lambda_{0}I)v_{2} = v_{1}$
or $(A - \lambda_{0}I)^{k}v_{k+1} = v_{k}$

$\implies Av_{2} = v_{1}+\lambda_{0}v_{2}$
where the base case for a Jordan chain must be a true eigenvector for which $A-\lambda_{0}I$ maps it to zero (it lives in it's kernel/null space)

---

<u>Claim</u> $c_{2}e^{\lambda_{0}t}(v_{2} + tv_{1})$ is a second solution 

At $t = 0$
$y_{0} = c_{1}v_{1} + c_{2}v_{2}$


might work!


We want $\frac{d}{dt}y(t) = Ay(t)$

$\frac{d}{dt}(c_{2}e^{\lambda_{0}t}(v_{2}+v_{1}))$

$= \lambda_{0}c_{2}e^{\lambda_{0}t}(v_{2} + v_{1}) + c_{2}e^{\lambda_{0}t}v_{1}$

Compare with $Ay(t)$

$Ac_{2}e^{\lambda_{0}t}(v_{2} + tv_{1})$
$= c_{2}e^{\lambda_{0}t}(Av_{2} + t Av_{1})$
$= c_{2}e^{\lambda_{0}t}(v_{1} + \lambda_{0}v_{2} + t \lambda_{0}v_{1})$


---

![[Elem Diff Equations/attachments/Drawing 25-10-27-02-39-55|100%]]

---

## Higher dimensions
$3 \times 3$

Possibilities 

1. $\lambda_{0}$ triple root 
if $dim(H_{\lambda_{0}})=1$ (which is not always the case, but you can always be unlucky) so we need 2 generalized Eigenvectors 

Since $(A-\lambda_{0}I)^{3}=0$,
$(A-\lambda_{0}I)$ only collapses $H_{\lambda_{0}}$ into the null vector, you can only reduce one dimension at a time.

So you can't have 2 vectors mapping to the eigenvector with a single application.

We would thus need 
$(A-\lambda_{0}I)v_{2} = v_{1}$
$(A - \lambda_{0}I)v_{3} = v_{2}$

The solution would have $c_{3}e^{\lambda_{0}t}(v_{3} + v_{2}t + v_{1}\frac{t^{2}}{2})$

In general, it would go as coefficient terms of $e^{x}$
(You would totally reach $e^{x}$ for infinite dimensional matrices).

2. 1 double root, 1 single root 
You again may again have independent eigenvectors, but you not always lucky for double roots.

so $(A-\lambda_{0})v_{1} = 0$
$(A-\lambda_{1})v_{2} = 0$
$(A-\lambda_{1})v_{3}=v_{2}$


---

For even higher dimensions, you may have geometric multiplicity$dim(H_{\lambda_{0}})>1$  but still smaller than the algebraic multiplicity.

In that case, since you are no longer confined with only 1 dimension collapse at a time, but $n$ dimensions collapse at a time, you could have $n$ simultaneous Jordan chains.


---





