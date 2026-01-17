# Energy Wells and Forces

![[Physics/Honors Physics I/attachments/Drawing 24-10-31-01-22-48]]

For a given potential
recall ($\Delta K = - \Delta U = \int F dr$)
Hence, $F(r) = \frac{-dU}{dr}$ (Force is the negative gradient of Potential — In very general terms)
($F(x) = \frac{-\partial U}{\partial x} \dots$)

$U(\Delta x) = U(0) + \frac{dU}{dx}|_{x=0} (\Delta x) + \frac{d^{2}U}{dx^{2}}|_{x=0} \frac{\Delta x^{2}}{2} \dots$
Taylor expansion of the function $U(x)$ around $x=0$, ignore the other terms.

That means, since $\frac{dU}{dx} = 0$ for $x=0$ (There is a minima, hence the slope, by definition is zero)
Hence, $U(x) \approx U(0) + \frac{d^{2}U}{dx}|_{x=0} \frac{x^{2}}{2}$
Hence, $$F(x) = \frac{-dU}{dx} = -k\Delta x$$ where $k = \frac{d^{2}U}{dx^{2}}|_{x=0}$

#cheesy 
Ahaa! Simple Harmonic motion is at the heart of ALL HARMONIC MOTIONS where you have energy pits. It is an approximation, but it propagates to all forms of Potential Wells.

So in other words, all harmonic motions are satisfy $F(x) = \frac{-dU}{dx}$ (in fact all conservative forces do)

Hence, Taylor expansion gives us $F(x) = -k_{1}\Delta x - k_{2}  \frac{\Delta x^{2}}{2!} - k_{3}  \frac{\Delta x^{3}}{3!}$
Where $k_{i}$ is an abstract evaluation of the partial derivative of the potential Since the most dominant term is $-k \Delta x$, all harmonic motions, for small $\Delta x$ can be approximated to $F(x) = -k \Delta x$

---
In conclusion, as long as $x$ is small, you can neglect higher order terms for all harmonic motions and treat the motion as a Simple Harmonic Motion where $$F = -kx$$

$F(x) = \frac{-dU}{dx} = -U'(0) - U''(0)x - \frac{U'''(0)x^{2}}{2}\dots$

(This is nothing but a Taylor expansion of $U'(x)$ at $x=0$ instead of $U(x)$. It's an Expansion of Force not Potential, which itself is a negative gradient of the Potential)
Notice, that is why $$F = U'(x)$$ but $$k=U''(0)$$
#cheesy 
>The key point is that Simple Harmonic Motion is Generic for **ANY STABLE EQUILIBRIUM**. By the Properties of Forces (negative gradient of Potential), there will always be some restoring force around a stable equilibrium. And it just happens due to the fact that any (continuous) function can be approximated for small values around a certain point as a linear function. That is the heart of calculus itself and also serves as a tie between SHM and ALL Harmonic Motions (motions in an energy well of a stable equilibrium).
---
## How to parametrize F with time instead of distance
You now have a function $F(x)= -kx$
but say you want to know the force as a function of time 
You can use $F=ma$
$$\implies F= m \frac{d^{2}x}{dt^{2}} = -kx \tag{1}$$

Ahaa! We now have a differential equation to solve
>_Ansatz_ method. "Ansatz" is a German term that roughly means "approach" or "educated guess."

We can solve the equation by guessing what function oscillates back and forth like a particle in SHM.

A Sinusoidal wave!

Let's check...
We **hypothesize** that $x(t)=Asin(\omega t + \phi)$

$\implies \frac{dx}{dt} = A\omega cos(\omega t + \phi)$
$\implies \frac{d^{2}x}{dt^{2}} = -A\omega^{2} sin(\omega t + \phi)$

Hence, $$\ddot{x} = -\omega^{2} x \tag{2}$$
but by $(1)$, $$m \ddot{x} = -kx \tag{1.a}$$
$\implies \ddot{x} - \frac{-k}{m} x = - \omega^{2} x$


$$\frac{k}{m} = \omega^{2} \implies \omega = \sqrt{\frac{k}{m}}$$
Ahaa, so the SHM is defined by 

- $x(t) = Asin(\omega t + \phi)$
- $\omega = \sqrt{\frac{k}{m}}$ (**angular frequency**)
$\phi$ is the initial phase of the motion 
$A$ is the maximum amplitude of the motion 

---
## Further massaging the equations 
![[Physics/Honors Physics I/attachments/Drawing 24-11-04-12-48-07]]
$T$ is the Time Period that a particle takes to traverse a complete oscillation and get back to the state (of position and motion) that it was initially in
$\omega T = 2\pi$
by definition, $f = \frac{1}{T} \implies f=\frac{\omega}{2\pi}$ (frequency... oscillations per unit time)

## Angular Velocity vs Angular Frequency 
These both values are closely related yet different!
And the distinction is important!
**Angular Frequency** is the speed factor/time coefficient of a particle moving in 1 dimension in a simple Harmonic motion.

**Angular Velocity** is the rotational velocity of a particle moving around a circle!

That is the distinction. The frequency is related to the one dimensional simple harmonic motion while the velocity is related to the actual circular motion.

The way they relate though, is that the SHM motion of a particle is exactly a projection of a particle that would otherwise be moving with a constant motion in a circle. So in essence, both the quantities are the same, except they are used in different scenarios (although closely related and in some sense, scenarios of duality that are equivalent!)

---
## Total Energy of a Simple Harmonic Motion 
$K = \frac{1}{2}mv^{2} = \frac{1}{2}m(A \omega cos(\omega t + \phi))^{2}$
$U = \frac{1}{2}kx^{2} = \frac{1}{2}k(Asin(\omega t + \phi))^{2}$

but $k = \omega^{2}m$
hence, $U = \frac{1}{2}m \omega^{2} (A sin(\omega t + \phi))^{2}$

Hence, $$M = E_{total} = K + U = \frac{1}{2}m(A \omega cos(\omega t + \phi))^{2} + \frac{1}{2}m \omega^{2} (A sin(\omega t + \phi))^{2} = \frac{1}{2}A^{2}m \omega^{2} = \frac{1}{2}A^{2}k$$

Ahaa! So the Total mechanical energy has to be the 
Maximum Kinetic Energy $K_{max} = U_{max} = \frac{1}{2}A^{2}k$
(The potential obviously is maximum for maximum amplitude)
The maximum Kinetic energy would be for maximum velocity, i.e. at lowest amplitude but the velocity itself has a funny function. So it's always more convenient to know the Amplitude for total Energy of the SHM.

---
## Simple Pendulum 
![[Physics/Honors Physics I/attachments/Drawing 24-11-04-01-09-52|100]]
The restoring force is $-mgsin(\theta)$ hence, restoring torque $\tau = -lmgsin(\theta)$. But $\tau = I \alpha$, $I = ml^{2}$ since all mass (the bob) is at length $l$.
$\sum \vec{\tau} = -l mg sin(\theta) = ml^{2} \alpha$

Hence, $-gsin(\theta) = l\alpha$
hence, for a simple pendulum, $sin(\theta) = \frac{-l}{g} \ddot{\theta}$

What kind of differential equation is this!?

This is very hard to solve. The way to solve this is to use a taylor expansion for sin for first term
$sin(x) \approx x$

imply $\theta \approx \frac{-l}{g}\ddot{\theta}$
Now that! Is solvable.

Looking at how a pendulum oscillates back and force, we guess the function to be $sin(x)$

We verify $\theta(t) = A sin(\omega t + \phi)$
here, $\ddot{\theta}(t) = -A \omega ^{2}sin(\omega t + \phi) = -\omega^{2} \theta(t)$

$$\omega = \sqrt{\frac{g}{l}}$$

note how this is different from $\omega = \sqrt{\frac{k}{m}}$ since for a pendulum, the force factor $k$ itself is dependent on $m$ hence they cancel out.

Another important distinction is how the motion is does have an angular velocity. The pendulum is moving in a non constant circular motion.

THIS angular velocity is NOT the same even numerically to the angular frequency. The phantom motion that we project to know the SHM is DIFFERENT from the angular velocity of the bob of a pendulum here!

The real test for these laws was gravity since there are little to no frictional forces hindering gravity on celestial scales.

>underlying principle of general relativity is to THINK "Why is it that when we write $F = - \frac{GMm\hat{r}}{r^{2}}$ and compare that to $F = ma$, we consider both masses $m$ to be the same?" 
>What Einstein compared the force or gravity to was all the other forces, which in some respect were linked into an electrostatic charge of a particle.
>What he asked was why is this Gravitational Charge the same as the Inertial Mass of an object? It was then that he thought this force of gravity is different from all other forces in a sense that this is not a force but rather is an artifact of the way inertial mass of an object alters the fabric of space time.

>The same idea... Why is Electromagnetic Wave different that all waves? Is it a wave after all? Is there a hidden (luminiferous) ether? Why is there a preferred direction for the Cosmic Microwave Background out of all things? Phase Change and Lorentz Invariance bounds? Gravitational waves?
>Reference Frames: All are correct and workable systems of consistent math. The question is, which is a more simple system to solve (that is probably the accurate system of nature).
>




