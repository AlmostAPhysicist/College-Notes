Integrals of trig functions of form $$\int (\text{trig functions})\cdot (\text{trig functions})\,dx$$
## Easy ones 
- $\int tan(x)\, dx = ln|sec(x)|+c$, by seeing $tan(x)= \frac{sin(x)}{cos(x)}$ and making u-sub
- $\int sec(x)\,dx = ln|sec(x)+tan(x)|+c$ by multiplying by $\frac{sec(x)+tan(x)}{sec(x)+tan(x)}$ and making u-sub
- $\int cot(x)\, dx = ln|sin(x)|+c$, by seeing $cot(x)= \frac{cos(x)}{sin(x)}$ and making u-sub
- $\int csc(x)\,dx = -ln|csc(x)+cot(x)|+c = ln|csc(x)-cot(x)|+c$ again multiplying by $csc(x)+cot(x)$ in numerator and denominator
- $\int sec^2(x)\,dx=tan(x)+c$
- $\int sin^2(x)\,dx$... just use $cos(2x)=cos^2(x)-sin^2(x)=1-2sin^2(x)$ and integrate.


## Type 1
$$\int sin^a(x)cos^b(x)\,dx,\quad$$ $a, b$ are non-negative integers.

#### Example 
$\int sin^3(x)cos(x)dx$ or $\int cos^{2024}(x)sin(x)dx$ are integrable by just a u-sub and converting copies of the other one using $sin^2(x)+cos^2(x)=1$

a little harder problem is when $a$ and $b$ are both even.
In that case, 

$$\int sin^a(x)cos^b(x)\,dx$$
(Reduction of Order Formula)
- Convert everything into 1 function - either cos(x) or sin(x)
- Use Integrate by parts
- use Pythagorean trig identity
- Hopefully get a wrap around

- Use Cos(2x) (THE GOD)



---
THE FOLLOWING WAS AN UNSUCCESFULL ATTEMPT

| D                            | I                          |
| ---------------------------- | -------------------------- |
| (+)$sin^a(x)$                | $cos^b(x)$                 |
| (-)$a\,sin^{a-1}(x)\,cos(x)$ | $-b\,cos^{b-1}(x)\,sin(x)$ |

$$\int sin^a(x)cos^b(x)\,dx= -b\,sin^{a+1}(x)\,cos^{b-1}(x)+\int ab \, sin^a(x)cos^b(x)\,dx$$
$$= \frac{-b\,sin^{a+1}(x)\,cos^{b-1}(x)}{1-ab}=\frac{b\,sin^{a+1}(x)\,cos^{b-1}(x)}{ab-1}$$

>Power of cos should increase and not decrease!
---

## Type 2
$$\int tan^a(x)sec^b(x)\,dx\quad\text{OR}\quad \int cot^a(x)csc^b(x)\,dx$$
#### Even Power of Secant
- Since $sec^2(x)$ is the derivative or $tan(x)$, do a u-sub if possible 
- Use Pythagorean Trig Identity $sec^2(x)=1+tan^2(x)$
#### Odd Power of Secant 
##### Odd power of tangent
- $sec(x)tan(x)$ is the derivative of $sec(x)$
- remaining powers of $tan(x)$ can be converted to $sec(x)$ using the Pythagorean trig identity.

##### Even Power of Tangent 
- convert everything in terms of secants
- integration by parts with one part as sec(x)
- wrap around 
- 