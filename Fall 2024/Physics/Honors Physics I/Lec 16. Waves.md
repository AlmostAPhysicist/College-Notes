![[Physics/Honors Physics I/attachments/Drawing 24-11-14-01-18-34]]

A wavefunction is a function that describes position of particles as a function of position and time, oscillating back and forth.

The “simplest” wave function is $$y(x,t) = Asin(kx-\omega t)$$
$k$ is the wavenumber, $k = 2\pi/\lambda$
$\omega$ is the angular frequency of a dummy circular motion, $\omega = 2\pi f = 2\pi T$
$f = \frac{1}{T}$
$wavelength$ is how far you travel before the wave repeats (peak to peak, etc)

Essentially, for a simple $sin$ wave propagating through space, each point is oscillating with a $sin$ function.

To get the function of oscillation at any point $x$, you shift your origin by $kx$

---
We can actually have more solutions for the wave equations that are NOT $sin$ and $cos$ trig functions. Perhaps even a gaussian can satisfy few wave equations.

However, $sin$ and $cosin$ happen to be a very convenient way to do things, especially since we can have a Fourier Tranfromation (just as Taylor Series writes functions as sums of polynomial terms, the Fourier Transformation writes functions as $sin$ and $cos$, which happens to be very useful for studies. Hence having a wave function written as a $sin$ and $cos$ can be an excellent and useful thing to do and is at the heart of oscillatory motion.)

---
## Reading off parameters and properties of a wave from the wave equation
$y(x,t) = Acos(kx - \omega t)$

$\omega = \text{angular frequency} = 2 \pi f$
$k = \text{wave number} = 2 \pi / \lambda$

For $t = 0, x = 0$, $y = 1$ hence the wave starts at the maximum amplitude.

To hold this highest amplitude, for an **increase in $x$**, you need to **increase $t$** in order to keep the same angle within the $cos$ function equal to $0$ and keep the height maximum.
Hence, with time, $x$ for crest increases, hence the wave moves forward (left to right).

Another way to look at it is, $-\omega t$ means you are shifting the $x-axis$ to the right (note how $x-a$ shifts axis to $a$. Hence, with increasing time, you shift wave towards the right.)

$v = \frac{\lambda}{T} = \lambda f$ is the velocity of the wave itself.

$\frac{\partial y}{\partial x} = -Aksin(kx - \omega t)$
$\frac{\partial^{2} y}{\partial x^{2}} = -Ak^{2}cos(kx - \omega t) = -k^{2}y$

$\frac{\partial y}{\partial t} = -A(- \omega)sin(kx - \omega t)$
$\frac{\partial^{2} y}{\partial t^{2}} = -A\omega^{2}cos(kx - \omega t)=-\omega^{2} y$

So interestingly, it's like for a constant time $t$, the wave is a sin function for changing $x$ values.
And for a constant $x$ value, the height of $x$ changes with the similar $sin$ function with changing time but with a different proportionality.

$$\frac{\partial^{2}y}{\partial x^{2}} = \frac{k^{2}}{\omega^{2}} \frac{\partial^{2} y}{\partial t^{2}}$$
$\frac{k}{\omega}= 2 \frac{\pi}{\lambda} \cdot \frac{1}{2\pi f} = \frac{1}{f \lambda}$

Hence, $$\frac{\partial^{2}y}{\partial x^{2}} = \frac{1}{v^{2}} \frac{\partial^{2} y}{\partial t^{2}}$$
Is the Wave equation ($v$ is a coupled velocity, which for a simple case of ours is just $f \lambda$).

Ahaa!
In other words, $\frac{\partial^{2}y}{\partial t^{2}}$ is the acceleration for a certain point.
$\frac{\partial^{2}y}{\partial x^{2}}$ is the curvature (how does the slope change)

We know from the above equation that $v^{2} \cdot curvature = acceleration$
i.e. the tighter the curve bend, the greater the acceleration for that certain point at a certain point of time.

![[Physics/Honors Physics I/attachments/Drawing 24-11-18-12-57-52]]

---
### Longitudinal Wave
- When motion of the particles is in the same plane as that of the wave energy.
It turns out that we can use the same physics equations if we consider the "wave" as the pressure function is a function of time and space.

The change in $x$ is the horizontal displacement from the mean position

---

For a mechanical wave, $v = \sqrt{\frac{T}{\mu}}$ (by dimensional analysis... but there is a more rigorous derivation)
- $T = tension$
- $\mu = \text{linear mass density}$

Makes sense right? It would be harder to move a chunk of mass with higher mass density and tension would make the collisions faster, hence the velocity would go up.

Note, both these quantities are determined by the Medium of the wave!

Hence, the velocity of a wave is determined entirely by the medium of the wave.


---
## Superposition 
Suppose I have two solutions to the wave equation $y_{1}$ & $y_{2}$
$\implies y_{1} + y_{2}$ satisfies it.

$\frac{\partial^{2}y_{1}}{\partial x^{2}} = \frac{1}{v_{1}^{2}} \frac{\partial^{2} y_{1}}{\partial t^{2}}$ $\qquad$ $\frac{\partial^{2}y_{2}}{\partial x^{2}} = \frac{1}{v_{2}^{2}} \frac{\partial^{2} y_{2}}{\partial t^{2}}$
$\frac{\partial^{2}(y_{1}+y_{2})}{\partial x^{2}} = \frac{\partial^{2}y_{1}}{\partial x^{2}} + \frac{\partial^{2}y_{2}}{\partial x^{2}} = \frac{1}{v_{1}^{2}} \frac{\partial^{2} y_{1}}{\partial t^{2}} + \frac{1}{v_{2}^{2}} \frac{\partial^{2} y_{2}}{\partial t^{2}}$

But since $v_{1} = v_{2} = v$ for the same medium, for the 2 waves travelling in the same medium.

Hence, $\frac{\partial^{2}}{\partial x^{2}} (y_{1}+y_{2}) = \frac{1}{v^{2}}\frac{\partial^{2}}{\partial t^{2}}(y_{1}+y_{2})$

Ahaa! That is the superposition principle is that when two waves happen to be present in the same medium, you can describe the motion in the medium as sum of the wave functions of the two different waves.

![[Physics/Honors Physics I/attachments/Drawing 24-11-18-01-17-13]]

Destructive Interference can cause waves to cancel out.
(That is how noise-cancelling earphones work)

---

The wave equation is simply 
$\frac{\partial^{2}y}{\partial t^{2}} = v^{2} \frac{\partial^{2}y}{\partial x^{2}} \qquad v = \sqrt{\frac{T}{\mu}}$

Is actually $F=ma$ 

A simple wave solution is $y=Asin(kx - \omega t)$

here, $\frac{\partial^{2}y}{\partial t^{2}}=-\omega^{2}y$
and $\frac{\partial^{2}y}{\partial x^{2}} = -k^{2}y$

Hence, we want $-\omega^{2}y = -k^{2}y \cdot v^{2}$
$\implies \frac{\omega}{k}=v$
