#### Newton's Law of Gravity 
$$\vec{F} = \frac{-GMm}{r^{2}} \hat{r}$$
>The reason there is an $r^{2}$, historically, that is what worked for Kepler's laws
>$r^{2}$, now we know works because fields propagate in 3-dimensional space, So by geometric reasons, things double the distance must have a quarter of the intensity for same area.

- Celestial Gravity and Gravity on Objects 
They were first thought to be different! Newton only postulated they may be the same. And that they both tie to a more universal law of gravitation.

It was 100 years later that Cavendish came along and did his torsion pendulum experiment only to prove Newton's laws to some extent.

---
But Newton Also said $$\vec{F} = m \vec{a}$$
Then these forces must be equal...
$$m \vec{a} = \vec{F} = \frac{-GMm}{r^{2}} \hat{r}$$
$$\vec{a} = \frac{-GM}{r^{2}}\hat{r}$$
Ahaa! So the acceleration due to gravity is changing!
Yes! But the radius of the Earth is so large, a slight distance changing above the radial distance wouldn't matter.

#### Radius? Isn't the Earth Flat?
![[Physics/Honors Physics I/attachments/Drawing 24-11-07-12-45-40]]
Light coming to the Earth from distant stars are almost Parallax.
Take the light coming from Polaris (the north Star).
If you measure the angles of shadows, you would get the changing shadows follow a pattern for sphereical surface!

Ahaa! So Earth has a Radius!

---
The force of gravity is Conservative.
$$\Delta K = Work =- \Delta U = \int^{r_{b}}_{r_{a}} \vec{F} \cdot d\vec{r} = -\int^{r_{b}}_{r_{a}} \frac{GMm}{r^{2}}\cdot d\vec{r} = GMm(\frac{1}{r_{b}} - \frac{1}{r_{a}})= -\Delta U$$

LET $U(r=\infty) = 0$
$\implies U(r) = \frac{-GMm}{r}$

Suppose we move in a circle
- $K = \frac{1}{2}mv^{2}$
![[Physics/Honors Physics I/attachments/Drawing 24-11-07-12-53-05|300]]
$F = \frac{-GMm}{r^{2}} = \frac{mv^{2}}{r} \implies v^{2}=\frac{GM}{r}$

$\implies K = \frac{1}{2}mv^{2} = \frac{GMm}{2r}$
But $U = \frac{-GMm}{r}$

$E = K + U = \frac{-GMm}{2r}$

As long as you are in a stable orbit around a gravitational field, your energy is negative! (It has to be! the further you get, the higher your energy, and the energy furthest is defined as 0)

### Escape Velocity 
The energy needed to escape all stable orbits of a certain gravitational field.

![[Physics/Honors Physics I/attachments/Drawing 24-11-07-12-58-29|300]]

For a Uniform Spherical Shell, you can treat it as if all of the mass at the Center of the Shell to calculate the Gravitational influence OUTSIDE the shell.
The field Inside a shell, happens to ZERO! (Geometrical Reasons)

$\Delta U = \frac{-GMm}{R}$
$\frac{1}{2}mv^{2} = \frac{GMm}{R}$ this is when the Kinetic energy of the object would cancel out the potential energy of the object and there would be no longer an influence 

$v_{escape} = \sqrt{\frac{2GM}{R}}$
---
### Kepler's Laws 
- Planets move in an ellipse about the sum, where the sun is located at a foci
- Planets Sweep equal areas in equal times 
- $T^{2} \propto R^{3}$

1. Assuming Circular Motion 
![[Physics/Honors Physics I/attachments/Drawing 24-11-07-01-12-05]]
$T = \frac{2\pi}{\omega}$
$T$ is Time period 
$\omega$ is the Angular Velocity of Planet 
$T = \frac{2\pi R}{v}$ since $\omega = \frac{v}{R}$
$v = \sqrt{\frac{GM}{R}}$ for any orbit (Centripetal force is $F= \frac{-GMm}{R^{2}} = \frac{mv^{2}}{R}$)

Hence, $T = \frac{2\pi R}{v} = \frac{2\pi R\sqrt{R}}{\sqrt{GM}}$
$\implies T^{2} = \frac{4\pi^{2}}{GM}R^{3}$

Hence, $T^{2} \propto R^{3}$

- Elliptical Motion

$a$ is the semi-major axis (half the largest chord on the ellipse passing through both the foci)

$T^{2} \propto a^{3}$


![[Physics/Honors Physics I/attachments/Drawing 24-11-07-01-07-07]]

Let it be Elliptical

$\vec{r} = r \hat{r}$
$\vec{v} = \frac{d\vec{r}}{dt} = \dot{r}\hat{r} + r \frac{d\hat{r}}{dt} = \dot{r}\hat{r} + r \dot{\theta} \hat{\theta}$

Where 
$\hat{r} = cos(\theta)\hat{i} + sin(\theta)\hat{j}$
$\hat{\theta} = -sin(\theta)\hat{i} + cos(\theta)\hat{j}$

Recall, $\vec{L} = \vec{r} \times \vec{p} = \vec{r} \times (m \vec{v}) = m \vec{r} \times (r \dot{\theta} \hat{\theta})$
$\implies \vec{L} = mr^{2}\dot{\theta}\hat{k}$

![[Physics/Honors Physics I/attachments/Drawing 24-11-07-01-25-05]]

$\Delta A \approx \frac{1}{2}r^{2} \Delta \theta$

$\frac{dA}{dt} = \frac{1}{2}r^{2} \frac{d\theta}{dt} = \frac{1}{2}r^{2}\dot{\theta}$

Hence, $\frac{dA}{dt}=\frac{|\vec{L}|}{2m}$

But! Since motion is always tangential, $\vec{p} \perp \vec{r} \implies \frac{d\vec{L}}{dt} = 0$
(i.e. the Torque is zero - Force is radially applied on hinge)

$m$ is constant
Hence, since $\vec{L}$ is not changing with time, $\frac{dA}{dt}= const$

Ahaa! Kepler's Law proved!


Essentially, $L = I \omega = mr^{2} \omega$
and geometrically, assuming areas swept are triangles,
Happens to be $\frac{1}{2}r^{2}d\theta$
Hence, $\frac{dA}{dt} = \frac{1}{2}r^{2}\omega$
which happens to be proportional to $L$
as $\frac{dA}{dt} = \frac{L}{2m}$

But since $L$ is constant (torque due to gravity is $0$), $\frac{dA}{dt}$ is a constant!
