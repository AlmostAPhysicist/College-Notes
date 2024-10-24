## The Basic Idea 
Used to determine if a series ($\sum^{\infty}_{n=k} a_{n}$) converges or diverges 
- some are only able to show if a series converges 
- some are only able to show if a series diverges (eg. TFD)
- many not always give a conclusive test 

## Recap 
$\int^{1}_{\infty} f(x)\,dx = \lim_{b \to \infty} \int^{b}_{1} f(x)\,dx$

$\sum^{\infty}_{n=1} a_{n} = \lim_{N \to \infty} \sum^{N}_{n=1} a_{n}$

Notice how both these operations have a similar flavor of approach. The take sum up to a finite number and push that finite number up an up.

## Connecting the two Sums (discrete and continuous) further  - The Integral Test
Say you are finding $\sum^{\infty}_{n=1} \frac{1}{n}$ (the harmonic series)

Simply testing $\lim_{n \to \infty} a_{n} = 0$ in inconclusive.

A way to approach the problem is ![[Maths/Calc 2/attachments/Drawing 24-10-23-05-49-08]]
The area of the rectangles (the **left-hand Riemann sum**), is exactly our series $\sum^{\infty}_{n=1} \frac{1}{n}$.
But you realize now that contained within the sum is our area under curve, i.e. $\int^{\infty}_{1} \frac{1}{x}\,dx$

We know that the integral diverges. Since The Sum (series) is greater than the integral, it must diverge as well.
This is like doing a direct comparison with the integral.

- Taking the **Left-hand Riemann Sum**, you show that a particular **series is larger** than the area under a curve
- Taking the **Right-hand Riemann Sum**, you show that a particular **series is smaller** than the area under a curve
A direct comparison with the area under curve then can yield meaningful results at times.

#### Another example - The Basel Problem 
$\sum^{\infty}_{n=1} \frac{1}{n^{2}}$
![[Maths/Calc 2/attachments/Drawing 24-10-23-05-59-24]]

You now know the value of the series is contained within the area under the curve
Hence, $\sum^{\infty}_{n=1} \frac{1}{n^{2}} < \int^{\infty}_{1} \frac{1}{n^{2}}\,dx$
And you know that the integral converges.
Hence, We know that the value of the series must also converge!

It happens to be that the value of the sequence $\sum^{\infty}_{n=1} \frac{1}{n^{2}} = \frac{\pi^{2}}{2}$

---
More formally, 
#theorem Integral Test 
Suppose that $a_{n}$ is a sequence such that $a_{n} = f(n)$ where $f(x)$ is a function that is 
- continuous on $[k, \infty]$ (eventually has to be continuous)
- positive on $[k, \infty]$
- $f(x)$ is strictly decreasing on $[k, \infty]$
	- Note, the function must **Eventually** keep decreasing. Again, for any finite value of x (up until say point $k$, you can show the value must be finite (else the function wouldn't be continuous anyways)) you can take the integral from there on and show the series is converging if the integral converges.

Then $\sum^{\infty}_{n=k} a_{n}$ converges if and only if $\int^{\infty}_{k} f(x)\,dx$ converges 
And the if the integral diverges, the series also diverges.

I.e. the integral and the series have the same behavior (you can always represent a function as a left or right-hand sum. If the function satisfies the property, we know one is contained within the other at all times hence divergence/convergence of the integral would imply divergence/convergence of the series)

---
#### Example 
$\sum^{\infty}_{n=1} ne^{-n^{2}}$
- f(x) is continuous and positive ($x$ and $e^{-x^2}$ are both continuous and positive for the interval)
- To show the functions is decreasing, we need to show the derivative is negative for all inputs 
	- $f'(x) = e^{-x^{2}} + xe^{-x^{2}}(-2x) = e^{-x^{2}}(1-2x^{2})<0 \space \forall \space x \in [1,\infty)$
	- Hence $f(x)$ is decreasing for the given bounds

- $\int^{\infty}_{1} xe^{-x^{2}}\,dx = \frac{-1}{2} \int^{-\infty}_{-1} e^{u}\,du = \frac{e^{-1}}{2}$

	Since The integral converges, the value of the series converges.


#theorem The integral test is ~~useless~~ obsolete 
(Once we get the other fun tests, no one looks back at the integral test)

Except...
##### Corollary (p-test for series)
$\sum^{\infty}_{n=k} \frac{1}{n^{p}}$ converges if $p>1$ and diverges if $p \leq 1$
i.e. for integrals from $1 \to \infty$ , inverse polynomials of order greater than one decay fast enough to converge.

(as an inverse, these diverge from $0 \to 1$ since they have a much higher gradient of ascent while moving towards zero from the right)
### Examples
- sum of $\frac{1}{n^{3}}$ converges 
- sum of $\frac{1}{n^{ln2}}$ diverges (ln(2)<1)
- sum of $\frac{1}{n^{1.00000001}}$ converges (decays fast enough still!)
- sum of $\frac{1}{n^{1+\frac{1}{n}}}$ oh well! tricky question! 
- sum of $\frac{1}{n(ln(n))^{2}}$ converges since the denominator is ever greater than $\frac{1}{n}$ even a hair faster than $\frac{1}{n}$ in terms of decay makes a series convergent

(convergent + divergent $\implies$ divergent)


