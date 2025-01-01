So far, the only laws we have are the Newton's laws of motion.
We're just messaging the equations to figure out the consequences.

We will now treat things further to dig out some more insights which aren't anything new but a slight shift of perspective.

---
Why can we ignore internal forces?
Because it there is no external force to a system, the $\sum \vec{F_{int}}=0$
since, by Newton's 3rd law, every action has an equal and opposite reaction. We can thus say everything, even if dynamic is in an equillibrium of energy.

We thus only need to consider NET EXTERNAL forces.

A nice thing about this idea is that it is UPTO you to consider what is external and what is internal. Depending on what you want, you can maneuver things as you like

---
## Newton's 2nd Law as how Newton said it

We usually say $\vec{F}=m \vec{a}$ but actually, the way newton wrote it initially as $$\vec{F}=\frac{d\vec{p}}{dt}=\frac{d}{dt}(m\vec{v})$$
where $m\vec{v}=p=momentum$
It essentially means the same thing since $\frac{d\vec{v}}{dt}=\vec{a}$.

But really what newton was thinking was the changes in Momentum of system.

![[Physics/Honors Physics I/attachments/Drawing 24-10-07-12-40-03]]

![[Physics/Honors Physics I/attachments/Drawing 24-10-07-12-40-49]]

Since there is no External force in the system, the rate of Change of momentum of the system, as newton was thinking is also Zero.

Hence, 
$$\sum \vec{F}=0 \implies \frac{d\vec{p}}{dt}=0 \implies \vec{p} \text{ is constant and is CONSERVED}$$
You could also break this into components and say momentum is conserved in a specific direction.

But remember! $\vec{p}$ here is the momentum of the ENTIRE system!

Momentum of a system is the sum of momenta of each of its components (it's sum of it's component vectors).

Hence, if we think about the system
$p_{x0} = Mv_0 + 0$
$p_{xf}=(M+m)v$ 

since momentum is conserved,  $Mv_0=(M+m)v$
hence, $$v = \frac{M}{M+m}v_0$$
$E_{0}= \frac{1}{2}Mv_0^2$
$E = \frac{1}{2}(M+m)v^2=\frac{1}{2}Mv_0^2(\frac{M}{M+m})$ 

Hence, you see that since $\frac{M}{M+m}<1$, $E<E_0$ 
!!!

This was a very special case of collisions called Perfectly inelastic collisions. 
The energy is lost due to unaccounted non-conservative forces! (else they wouldn't stick together!)

- Elastic collisions $\iff$ Kinetic Energy is conserved
- Inelastic collisions $\iff$ Kinetic Energy is not conserved

You can subdivide for how much of the relative velocity is lost and thus how much kinetic energy is lost.

---
A very simple example of conservation of momentum along different components would be ![[Physics/Honors Physics I/attachments/Drawing 24-10-07-01-03-03]]

Here, the initial momentum in $x-dir$ is $mv$ and $y-dir$ is $mv$
Hence, the final momentum in $x-dir$ must be $mv=2m \cdot v_{f}cos(\theta) \implies v_f cos(\theta) = \frac{v}{2}$
similarly, $v_{f}sin(\theta) =\frac{v}{2}$
hence, $tan(\theta)=1$ meaning $sin(\theta)=\frac{1}{\sqrt{2}}$

Hence, $v_{f} = \frac{v\sqrt{2}}{2} = \frac{v}{\sqrt{2}}$

Comparing the kinetic energies, $KE_{i}= 2 \cdot \frac{1}{2}mv^2=mv^2$
$KE_{f} = \frac{1}{2}2m \frac{v^{2}}{2}=\frac{mv^2}{2}$

Hence, energy is lost! Exactly half of it!


---

## Why do we consider all forces along the "Center"

### Center of what?

Consider a system
$$\sum \vec{F_{int}}=0$$
$$\sum \vec{F_{ext}}=\sum^{N}_{i} m_i\vec{a_{i}}= M\vec{a}$$
i.e. Sum of Forces on all individual bits is the Net force on the NET mass with a NET acceleration.

hence, $\vec{a}=\frac{\sum^{N}_{i} m_i\vec{a_{i}}}{M}$
but since $M = \sum_{i}^{N} m_i$ 
$$\vec{a}=\frac{\sum^{N}_{i} m_i\vec{a_{i}}}{\sum^{N}_{i} m_i}$$
Now, $\vec{a_{i}}= \frac{d^2}{dt^{2}}\vec{r_i}$
Hence, $$\vec{a}=\frac{\sum^{N}_{i} m_{i}\cdot\frac{d^2}{dt^{2}}\vec{r_i}}{\sum^{N}_{i} m_i}$$
Since the derivative can come down, $$\vec{a}=\frac{d^2}{dt^{2}}(\frac{\sum^{N}_{i} m_{i}\vec{r_i}}{\sum^{N}_{i} m_i})$$
THIS (the function within the differential function $(\frac{\sum^{N}_{i} m_{i}\vec{r_i}}{\sum^{N}_{i} m_i})$) is the "Center of Mass"
It is the mass-averaged position

Simply, it's the Weighted average of all the points with weights as the mass chunks at the point.
$\displaystyle \text{Center of Mass} = \frac{\text{Wieghed sum of Points}}{\text{Sum of masses}}$


The center of mass is the position that we consider to be the 2nd derivative of the acceleration that we can consider the acceleration on.

As an integral, we would write this as $\displaystyle \frac{\int r\,dm}{\int dm}$ (more about that in the next lecture [[Physics/Honors Physics I/Lec 9. Center of Mass]])

---

The point is, considering forces to be on the center of mass of a rigid body is a legitimate thing to do! It's an extension of Newton's 3rd law. So if that is correct, it is okay to consider forces on center of masses. (It fails for quantum system as Prof. Chou points out)

Note, I said it's okay to consider forces ON the center of mass on a rigid body.

NOT ok to always from forces DUE to the center of mass.

---
$$\frac{d\vec{p}}{dt} = \vec{F_{net}}$$
So $$\frac{d\vec{P}}{dt} = \frac{d}{dt}(\vec{p_{1}} + \vec{p_{2})} = \frac{d}{dt}\vec{p_{1}} + \frac{d}{dt}\vec{p_{1}} = \vec{F_{net}} $$
$$= \vec{F_{1net}} + \vec{F_{2net}} = \vec{F_{net}}$$
$$= \vec{F_{12}} + \vec{F_{1\,ext}} + \vec{F_{21}} + \vec{F_{2\,ext}} = \vec{F_{net}}$$
But since Newton's 3rd law says $\vec{F_{12}} = -\vec{F_{21}}$
Hence, $\vec{F_{net}} = \vec{F_{1\,ext}}+\vec{F_{2\,ext}}$

Hence, due to Newton's Third $$\vec{F_{net}} = \sum \vec{F_{ext}} = \frac{d\vec{p}}{dt}$$
Hence, if there are NO External forces on a system, the change in the total momentum of the system is 0!
Hence, the sum of the component vectors of the total momentum is zero!
$$\vec{p_{1}}+ \vec{p_{2}}= 0 \enspace, \quad \text{Given, } \vec{F_{ext}}=0$$
