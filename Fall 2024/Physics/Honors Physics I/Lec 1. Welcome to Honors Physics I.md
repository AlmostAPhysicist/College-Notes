# Again?

It's Gonna be Fun!

## The Math

derivative = instantaneous rate of change on one variable wrt another

![[Physics/Honors Physics I/attachments/Drawing 24-09-05-12-55-06]]
as $x_2$ approaches $x_1$, we get the **instantaneous** rate of change for the function at $x_1$

$\frac{df}{dx}= \lim_{\Delta x \to 0}  \frac{\Delta f(x)}{\Delta x}$

Tbh, just refer back to [[Maths/Calc 1/Change|Change]].

The major Takeaway...
the Idea that

>The Rate of Change of the Area of a function IS the value of the function at a particular point!


$\text{For } I(x)=\int^{x}_{0} f(x) dx$
Area within an interval [a, b] $Area = I(x+\Delta x) - I(x) \approx f(x) \Delta x$
This holds True for $\Delta x \to 0$
i.e. $\displaystyle Area = \lim_{\Delta x \to 0} I(x+\Delta x) - I(x) = \lim_{\Delta x \to 0} f(x) \Delta x$
Dividing through by $\Delta x$,
$\displaystyle Area = \lim_{\Delta x \to 0} \frac{I(x+\Delta x) - I(x)}{\Delta x} = \lim_{\Delta x \to 0} \frac{f(x) \Delta x}{\Delta x}$
 HENCE PROVED, the integral and derivative are inverses.

---
## Approximation

Physics is NOT an exact science!
It's about approximations and Assumptions!

A Penguin can be thought of as a cylinder for some problem! 
**But!**
That can give you a huge insights for a certain question.
We make all kinds of such approximations.

### Approximation Methods: 

refer to [[Maths/Calc 1/Approximations|Approximations]]
1 such method of approximation is [[Maths/Calc 1/Approximations#Taylor series|Taylor Series]].

$f'(x)=\frac{f(x+\Delta x) - f(x)}{\Delta x}$
$f'(x)\approx f(x+\Delta x) - f(x)$

$\implies (1.01)^{60}\approx x^{60} + 60 x^{59}\Delta x \quad \{f(x)=(x+\Delta x)^{60}\}$
$= 1+60\Delta x = 1.6 \quad \{\Delta x = 0.01\}$
NOT bad... But can be better.

Taylor expansion...


$f(x) = f(x) + f'(x)\frac{\Delta x}{1} + f''(x) \frac{(\Delta x)^{2}}{1\cdot2}+ f'''(x) \frac{(\Delta x)^{3}}{1\cdot2\cdot3}\dots$
$\implies f(1.01) = 1 + 0.6 + 0.177\dots$
$\implies f(1.01) \approx 1.77$

You can get closer and closer to the actual value $(1.01)^{60} = 1.816\dots$

Hence, you can get to actual values through Taylor expansion $$f(x+\Delta x) = \sum^{n=0}_{k} \frac{f^{(n)}(x) (\Delta x)^n}{n!}$$
And cut off at any point to get to the precision you need.

It's useful for all kinds of stuff!
>Fourier Transform is just Taylor series for an infinite expansion of cosines and sines 

---
### Another Example 
$f(z)=e^{z}\quad f(0)=1$
$f'(z)=e^z$
...
$f(\Delta z) \approx 1 + \Delta z + \frac{(\Delta z)^2}{2!}\dots$

Sin and cosine have their thing...

You can figure from that that sin, cos and $e^x$ are connected

You can realize:
$$e^{iz}=cos(z)+isin(z)$$

**You will need such approximations all the time in physics especially when solving complex differential equation using elementary functions. For example the pendulum thingy... remember 3b1b context of using Taylor series for cos(x)?**


