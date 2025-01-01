# What we've talked about thus far

## Torque and Force

$$\vec{\tau} = \vec{r} \times \vec{F}$$
Torque ($\tau$) is a **"rotational force"**. It is NOT a force.
But just as force causes things to accelerate translationally, torque causes objects to accelerate rotationally.

For rigid bodies, $\tau_z = I \alpha_z$
I.e., any torque applied about a rotational axis would affect all points of the body the same way.

## Moment of Inertia and Mass
Just as mass is a resistance to the change of translational state of motion.
The moment of inertia ($I = mr^{2}$, at least for little bits of mass about a rotational axis) is the resistance to the change of rotational state of motion ABOUT AN AXIS.

## Rotational and Translational Kinetic Energy 
$K_{translational} = \frac{1}{2}mv^{2}$
$K_{rotational} = \frac{1}{2}I \omega^2$

$K_{total} = K_{translational} + K_{rotational}$
(niche but not a trivial thing to prove)

---
Thus far, all of these have popped out of treating little bits of a rotating body as having a translational motion for infinitely small bits of its rotation. Refer to [[Physics/Honors Physics I/Lec 10. Rotational Motion|Lec 10. Rotational Motion]] for more.

---
## The missing Analogy — Momentum 
We define the rotational equivalent of momentum ($mv$) to be the **Angular Momentum** ABOUT AN AXIS POINT.
Just as Torque is $\vec{r} \times \vec{F}$, we define $\vec{L} = \vec{r} \times \vec{F}$ (more on this in a bit)

But why?

To maintain the consistency within our system, just as $\vec{F} = \frac{d\vec{p}}{dt}$, it would be nice to have $\vec{\tau} = \frac{d\vec{L}}{dt}$

So our hypothesis is that $\vec{\tau} = \frac{d\vec{L}}{dt}$ is true, and we want a quantity for this it holds.

$\vec{\tau} = \vec{r} \times \vec{F} = \vec{r} \times \frac{d\vec{p}}{dt}$
And we want toque to be $\frac{dL}{dt}$
hence, $$\frac{d\vec{L}}{dt} = \vec{r} \times \frac{d\vec{p}}{dt}$$
(that is just by the hypothesis that $\tau = \frac{dL}{dt}$)

Hence, $d\vec{L} = \vec{r} \times d\vec{p}$
therefore
$$\vec{L} = \vec{r} \times \vec{p}$$
(you can prove the other way around as well... proving hypothesis, given the relation of $\vec{L}$ and $\vec{p}$)

---
The point is $$\vec{\tau} = \frac{d\vec{L}}{dt}$$
Hence, just like if there is no external force, the momentum is conserved,
**If the external torque is zero, angular momentum is conserved, irrespective of whether energy of the system changes due to internal forces/torques**

### Ice-Scaters
![[Physics/Honors Physics I/attachments/Drawing 24-10-28-12-52-44|200]]

So for an ice-scatter, sum of its external torques is zero.
Hence, bringing hands closer decreases the moment of inertia. But $L = I \omega$ is constant. Hence, $\omega$ would increase.

---
# Block down a ramp 

## Forces and Torque

![[Physics/Honors Physics I/attachments/Drawing 24-10-28-12-56-36]]

Assuming rotation WITHOUT slip (i.e. the amount it rotates is going to be exactly what it traverses translationally, No Slip such that the rotation causes no motion/vice-versa) 
$v= \omega R$.
$\implies a = \alpha R$

We decompose the problem in little bits
### Translational Motion
Along the ramp, $-f + Mgsin(\theta) = Ma$
perpendicular to the ramp, $N - Mgcos(\theta) = 0$

### Rotational Motion 
About what!? 
Consider rotation about the center of mass of the Block
$Mg$ and $N$ are applied at a radial distance $0$ from the rotational axis. Hence, their contribution is $0$.
Hence, 
$rf = \tau= I_{cm} \alpha$

using $f$ from this in equation 1 for translation,
$-\frac{I_{cm} \alpha}{r} + Mgsin(\theta) = Ma$
Hence, (for a disk)
$-\frac{\frac{1}{2}MR^{2} \frac{a}{R}}{R} + Mgsin(\theta) = Ma$

Hence, 
$gsin(\theta) = \frac{3}{2}a$

Now using kinematics, $v_{f}^{2} - v_{i}^{2} = 2ad$
Thus, (since $v_{i} = 0$) $v_{f} = \sqrt{\frac{4}{3}gsin(\theta)d} = \sqrt{\frac{4}{3}gh}$

---
## A different way — Torque Only
Considering 
![[Physics/Honors Physics I/attachments/Drawing 24-10-28-01-14-22]]

That means, the $\tau_{N} = \tau_{f} = 0$
the only contribution to the torque is $r \, Mgsin(\theta)$
which is a constant!

Hence, $\sum \vec{\tau} = rMg sin(\theta) = I \alpha$
NOTE! $I$ now is NOT $I_{com}$. You have considered a different axis, the Moment of inertia changed as well. You can use the parallel axis theorem to find the new $I$.
$I = I_{com} + Mr^{2} = \frac{3}{2}Mr^{2}$

Hence, $rMgsin(\theta) = \frac{3}{2}Mr^{2} \, \frac{a}{r} \implies a = \frac{2}{3}gsin(\theta)$

Ahaa! You get the same result but with fewer steps. So considering a smarter Rotational axis/pivot point can help you out a lot.

---
## Energy Conservation 

![[Physics/Honors Physics I/attachments/Drawing 24-10-28-12-56-36]]

By "Linear" Work Energy Theorem:
$K_{f} - K_{i} = \int \vec{F} \, \vec{dr} = K_{f} \qquad \{K_{i} = 0\}$
$\implies \frac{1}{2} Mv^{2} = \int^{l}_{0} (-f + Mgsin(\theta)) \, dr$

Notice, friction HAS to be there since the ball is speeding up. The velocity alone can not account for no slip. Since there is friction, there must be loss of energy (work done by friction). Hence you have a $-f$ in the integral.

Considering rolling without slipping ($\omega = \frac{v}{r}$)
$\implies \frac{1}{2}Mv_{f}^{2} = (-f + Mgsin(\theta))l$

---
By "Rotational" Work Energy Theorem:
$\frac{1}{2}Iw_{f}^{2} - \frac{1}{2}I w_{0}^{2} = \int^{\theta_{f}}_{\theta_{0}} \tau \, d\theta$

I.e. change in Rotational Kinetic Energy is the work done by Torque 
$\theta_{0} = 0$
$\theta_{f} = \frac{l}{R}$, $R$ bring the radius of the circular disk

Now... Where should we consider the Torque about?
You want the friction to be somewhere to cancel out with the friction term from our translational expression since friction is unknown.

Hence, Considering Rotation about Center of Mass, no force contributes to the torque except $f$

Hence, $\tau = Rf$
$I_{com} = \frac{1}{2}MR^{2}$
$\implies \frac{1}{2} \cdot \frac{1}{2} MR^{2} \frac{v_{f}^{2}}{R^{2}} = \int^{\frac{l}{R}}_{0} Rf d\theta = \frac{Rfl}{R}$
$\implies \frac{1}{4}Mv_{f}^{2} = fl$
comparing that to our $\frac{1}{2}Mv_{f}^{2}$ from translational,
$v_{f} = \sqrt{\frac{4}{3}gh}$
---
## The WRONG way 
$Mgh = \frac{1}{2}Mv_{f}^{2} + \frac{1}{2}Iw_{f}^{2}$
$\implies Mgh = \frac{1}{2}Mv_{f}^{2} + \frac{1}{2}(\frac{1}{2}MR^{2})\frac{v_{f}^{2}}{R^{2}}$
$\implies v_{f} = \sqrt{\frac{4}{3}gh}$

You ignore friction!

But why does it work then?
**Because the frictional forces are non-dissipative for no slip**
All energy that gets lost due to friction in translation, gets put back as rotational motion.

So you get lucky by ignoring friction here but you would have to prove why ignoring is okay.
The previous method does exactly that!

It has a friction term in the translational motion that is taking away energy.
But in the rotational motion, you get the same term back adding on to the rotational energy!

Ahaa!

For no rolling, $v_{f} = \sqrt{2gh}$
Ahaa! This is bigger. And that makes sense!

So it's like rolling is bad for speeding down ramps. A low friction slip is better than a rolling down with friction.
>That is why 3 wheel drives are better than 4 wheel drives because you spend less energy on rotating the damn wheel!


### God Notes on Rolling 
![[Physics/Honors Physics I/attachments/WhatsApp Image 2024-03-31 at 07.58.37_7b31e100.jpg|800]]

---
## Gyration 
![[Physics/Honors Physics I/attachments/Drawing 24-10-31-01-02-13]]

$\tau_{g}= Mgd$ (Torque points In the plane of the disk, perpendicular to the gravity and angular momentum)
$\vec{L} = I \omega$ (Angular Momentum Points perpendicular to the plane of the disk (it points along the axis of rotation))

Notice how $\vec{L}$ and $\vec{\tau}$ are always perpendicular.
As soon as the torque changes the angular momentum (since it is perpendicular, it does no work hence the magnitude doesn't change. **Only the direction changes**)


Hence, since $\tau \perp L$, $|L| = constant$
But since there is a Torque, there is a directional change 
$\vec{\tau} = \frac{d\vec{L}}{dt} \implies L \frac{d\hat{L}}{dt}$

$$\omega_{p} = |\frac{d\hat{L}}{dt}| = \frac{\tau}{L} = \frac{Mgd}{I\omega} = \frac{Mgd}{\frac{1}{2}MR^{2} \omega} = \frac{2gd}{R^{2}\omega}$$, here $\omega_{p}$ is the processional speed. (the speed of turning around the axis gyrationally. THIS IS DIFFERENT FROM ROTATIONAL SPEED) 

Now, as soon as the angular momentum changes (i.e. the face of the disk), the torque is again perpendicular. So $L$ keeps chasing the $\tau$ but they are always perpendicular. The chase keeps going on.

The speed of this chase is different from the speed of rotation about pivot itself. In fact, is is inversely proportional $\omega_{p} = \frac{2gd}{R^{2}\omega}$


---
