## SVD in the continuous case 
>Also known as Schmidt decomposition in Quantum Mechanics 

Functions: periodic functions of period $2\pi$
$f:[-\pi, \pi] \to \mathbb{R}$
(since $f$ is periodic, $f(-\pi)=f(\pi)$)

>E.g. $sin(x), cos(x), sin(3x), \dots$

Let $Fun := \set{\text{all these periodic functions which are smooth}}$
>smooth means you can keep taking derivatives and your function never breaks apart

---

### Inner Product on functions 
$f,g$ are two functions

**Inner product on these functions is defined by**
$\braket{f|g} = \int_{\pi}^{\pi} f(x)g(x)dx$

As a reminder:
We saw why in a previous class... essentially, functions can be represented as vectors

$f=f_{x}$ (vector with a continuous index)
$g=g_{x}$ 
$\vec{f} \cdot \vec{g} = \textquoteleft \sum f_{x}g_{x} \textquoteright = \int_{\pi}^{\pi} f(x)g(x)dx$

Another notation to write this is just $\braket{f|g}$

---

## Even and odd functions 
$f$ is odd if $f(-x)=-f(x)$
$g$ is even if $g(x) = g(-x)$

<u>Claim 1:</u>
If $f$ is odd, and $g$ is even, then they are orthogonal.

Being orthogonal, means we are claiming their dot product is zero.
Let's see:

$\braket{f|g} = \int_{-\pi}^{\pi} f(x)g(x)dx$
but$f(-x)g(-x) = -f(x)g(x)$ 
meaning $u(x)=f(x)g(x)$ is an odd function

Therefore, the integral over bounds $[-\pi, \pi]$ (any symmetric bound) would be $0$.

<u>Claim 2:</u>
If $h$ is a function, $h$ is a combination of an even and odd function 

$h(x) = \frac{h(x)+h(-x)}{2} + \frac{h(x)-h(-x)}{2}$
Here, the first term would be even, and the second would be odd.

>Similar to how a matrix can be represented as a sum of Symmetric and Skew symmetric matrices


![[Tensor Networks/attachments/Drawing 25-10-02-02-18-29|100%]]

<u>Claim 3:</u>
If $f(x)$ is odd, then $f'(x)$ is an even function.
Likewise, if $g(x)$ is even then $g'(x)$ is odd.

>You can try proving this with the limit definition of a function's derivative

![[Tensor Networks/attachments/Drawing 25-10-02-02-28-07|100%]]

---

>So far, we haven't really used any periodicity property per se

---

$Null D = \set{\text{f such that Df = 0 meaning } \frac{df}{dx}=0}$
$f$ is constant so $f$ is even so it is not in the Domain of our consideration for now (again, we CHOOSE to only say we consider odd periodic functions to be our domain)

Only constant function that would be odd is the zero function

So $NullD = {f(x)=0}$

$D$ is sort of like a matrix here.

---

For a matrix $A$, SVD:
$A = U \Sigma V^{T}$
Using the eigenvalues and eigenvectors of $AA^{T}$ and $A^{T}A$


**What should be $D^{T}$ for our derivative function mapping odd to even functions?**

---

![[Tensor Networks/attachments/Drawing 25-10-02-02-36-40|100%]]

