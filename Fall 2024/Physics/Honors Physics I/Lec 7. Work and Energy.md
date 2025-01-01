So far, the legitimacy of forces has been governed by time. So far we have studied functions with time as the key parametrizing variable.

But often, force is a function of position!
Example:
	$\vec{F}=\frac{-GMm \hat{r}}{r^2}$
	$F=-kx$

Note:
You CAN parameterize functions with (kinda) any variable.
But it is often more convenient to do it with `position`.

---
$$F=ma=m \frac{dv}{dt}$$
$\displaystyle \int F(x) \, dt = \int m\, dv$
$\displaystyle \int F(x) \,v\, dt = \int m\,v\, dv$
$\displaystyle \int F(x) \, \frac{dx}{dt}\, dt = \int m\,v\, dv$
$\displaystyle \int F(x) \, dx = \int m\,v\, dv$

$$\int^{x_b}_{x_{a}}F \,dx = \int^{v_b}_{v_{a}} mv\,dv$$
$$W=\int^{x_b}_{x_{a}}F \,dx = \frac{1}{2}mv_{b}^{2}- \frac{1}{2}mv_{a}^{2}=K_b-K_a$$
$K = \frac{1}{2}mv^2$ (by definition)
Hence, 
#def Work Energy Theorem says, 
	Work Done = Change in Kinetic Energy 
If initial Kinetic Energy = 0 then $\displaystyle W=\int^{x_b}_{x_{a}}F \,dx = \frac{1}{2}mv^{2} = K$

---
### Path Dependency of work

$$W=\int^{\vec{r_b}}_{\vec{r_a}}\vec{F} \cdot \vec{dr} = K_b-K_a$$
This is a ==line integral==.
>Line integral is a mathematical integral along a specified path.
>Solving it involves taking partial derivatives of the functions.

If the line defining the path is a closed loop, the integral is called the closed loop (the final and initial position is the same and hence the work done is ZERO ($0$)).
$$\oint \vec{F} \cdot \vec{dr}=0$$
given that the force is path independent.


For some forces, work is ==path dependent== and for some forces it is ==path independent==

## Path Dependent 
Friction, Magnetic Forces (Interesting reason WHY!)

## Path Independent 
Gravitation, Sprint Force, Tension, Electrostatic Forces

---
#### Proving Path Independence of Gravity 

![[Physics/Honors Physics I/attachments/Drawing 24-09-30-12-48-46]]

The Idea is, any path can be broken down into A radial and an angular component for each bit of the path.

$$\int^{\vec{B}}_{\vec{A}}\vec{F} \cdot \vec{dr}=\int^{\vec{C}}_{\vec{A}}\vec{F} \cdot \vec{dr} \,+ \int^{\vec{D}}_{\vec{C}}\vec{F} \cdot \vec{dr}\, + \int^{\vec{E}}_{\vec{D}}\vec{F} \cdot \vec{dr}\, + \int^{\vec{F}}_{\vec{E}}\vec{F} \cdot \vec{dr}\, + \int^{\vec{G}}_{\vec{F}}\vec{F} \cdot \vec{dr}\, + \int^{\vec{H}}_{\vec{G}}\vec{F} \cdot \vec{dr}$$

But the angular components Dotted with the Force vectors are $0$. Hence, all that is left is the sum of the integrals of all the radial components.

Hence, $\int^{\vec{B}}_{\vec{A}}\vec{F} \cdot \vec{dr} = \int^{\vec{r_b}}_{\vec{r_a}}\vec{F} \cdot \vec{dr}$
Because all the radial distances summed up happen to be simply $r_b$ and $r_a$.

Hence, $$W = GMm (\frac{1}{r_{b}} - \frac{1}{r_{a}})$$
Hence, work done by gravity is only dependent on the final and initial points on the path because the non-radial components when dotted with the radially dependent force cancel out.

In general, ALL Forces that have radially dependent are conservative and the work done by those forces are Path Independent! (They are dependent not on the paths but the initial and final positions)
---

---
## Example 
![[Physics/Honors Physics I/attachments/Drawing 24-09-30-01-15-09|1000]]

$\displaystyle W_{F}= \int^{L}_{0} F\, dx = FL$


$\displaystyle W_{f}= \int^{L}_{0} -\mu mg\, dx = - \mu mg L$

---
# Conclusion
> Work done by a conservative force does NOT depend on a path.

This is equivalent to saying that $$\oint \vec{F} \cdot \vec{dr}=0$$
Any force that follows that is a conservative force.
i.e., The work done depends only on the end points.

## Interesting things:
*Suppose* you do have a conservative force:
$$\int^{x_b}_{x_{a}}F \,dx = \frac{1}{2}mv_{b}^{2}- \frac{1}{2}mv_{a}^{2}=K_b-K_{a}$$
now since that only depends on end points, we can say $$f(\vec{b})-f(\vec{a})=\int^{x_b}_{x_{a}}F \,dx = \frac{1}{2}mv_{b}^{2}- \frac{1}{2}mv_{a}^{2}=K_b-K_a$$
$f(\vec{r})$ here is some function of a vector.

Now, let's define $u(\vec{r})=-f(\vec{r})$
$$\implies K_{b}- K_{a} = f(\vec{b})-f(\vec{a}) = u(\vec{a})-u(\vec{b})$$
$$\implies K_{b}+ u(\vec{b})= K_{a}+ u(\vec{a})$$
Since both sides of the equation is only dependent on 1 variable, it better be a constant for all variables of choice!

Hence, $$K_{r}+u(\vec{r})=constant=E$$
This is the idea of energy conservation. $K_r$ is the Kinetic energy and $u(\vec{r})$ is the potential energy!

You can do it without the change to $u(\vec{r})$ too.

But this manipulation gives us an idea that there is some hidden energy within a system with conservative forces too!

Note, you can't do this manipulation for non-conservative forces. Does that mean energy is not conserved for those forces? No! It just means you're not accounting for the loss of energy as other forms of dissipative forces reducing the energy.

What conservative forces allow us to do is account for energy quite easily.

>This is nothing newer than Newton's Laws. The idea is derived from Newton's 2nd Law. But we can use the fact that something like this is true for certain cases to our advantage.

---

![[Physics/Honors Physics I/attachments/Drawing 24-10-03-12-48-56]]
$\frac{1}{2}mv_f^2-\frac{1}{2}mv_0^2=\int\,\vec{F}\cdot \vec{dr} = \int^{y_f}_{y_0} -mgdy = -mgy_f+mgy_0$

But we know $\frac{1}{2}mv^{2}_{f} + mgy_{f}=mv^{2}_{0} + mgy_{0}=E$
Hence, $$U(y)=mgy$$
They key here is you can say it's $K_f-K_0$ only because the force is conservative. So you have to think of $F$ as a conservative force of gravity. 
So essentially, you say
$$Work_{by \space Gravity}=K_f-K_0$$
But solving the integral, it's also $$Work_{by \space Gravity}= U(0)-U(f)$$
So it's the gain in Kinetic Energy but also Loss of Potential Energy.

It's like you're exchanging 1 form of energy with the other, and You're exchanging Kinetic Energy with Potential Energy.


![[Physics/Honors Physics I/attachments/Drawing 24-10-03-01-00-00|800]]

For a conservative Force, $$U(x+\Delta x)-U(x)= -(\text{Work done from x to x+}\Delta x) = - \int^{x + \Delta x}_{x} F\, dx$$
$$\approx -F(x)\cdot \Delta x$$
$$\implies -F(x) \approx \frac{U(x+\Delta x)-U(x)}{\Delta x} = \lim_{\Delta x \to 0} \frac{U(x+\Delta x)-U(x)}{\Delta x} = \frac{dU}{dx}$$
Hence, gradient of Potential Energy is $-F(x)$.

Or simply, $F(x)\,dx = -dU$.
Note that this is only a gradient as is independent of the initialization parameters.
You can make your own choice of what the initial Potential energy is but what matters is the DIFFERENCE in Potential Energy.
---


So essentially, having been done all the integration saves us from integrating in problems of a similar setup.


You can have different integral results!

---
### A Potential Energy by Compressing a spring
Sprint force $F=-kx$
$$dU = - F(x)\,dx \implies \Delta U_{\text{x1 to x2}} = \int^{x_2}_{x_{1}} - (-kx)\, dx = \frac{1}{2}kx_2^2-\frac{1}{2}kx_1^2$$
Hence, defining $U(0)=0$, $U(x)=\frac{1}{2}kx^2$





