Building onto the idea introduced in [[Physics/Honors Physics I/Lec 8. Momentum#Center of what?|Center of What?]]

$$\vec{a}=\frac{d^2}{dt^{2}}(\frac{\sum^{N}_{i} m_{i}\vec{r_i}}{\sum^{N}_{i} m_i})$$
$$COM=(\frac{\sum^{N}_{i} m_{i}\vec{r_i}}{\sum^{N}_{i} m_i})$$
$$\displaystyle \text{Center of Mass} = \frac{\text{Wieghed sum of Points}}{\text{Sum of masses}}$$
In terms of an integral, taking the limit of the sum, 
$$\vec{r_\text{com}} = \frac{\int \vec{r}\,dm}{\int dm}$$
---
## Examples 

### Ring
![[Physics/Honors Physics I/attachments/Drawing 24-10-10-12-39-29]]
$linear\,density = mass/length$
$$\lambda = \frac{dm}{dl}=\frac{m}{2\pi r}=\text{"uniform density/density function"}$$
$\implies dm = \lambda \, dl$

Definition of `angles`:
$\theta=\frac{l}{r}$, $l=\text{Arc Length}$, $r=Radius$

$$x_{cm}=\frac{\int x\, dm}{\int dm}$$
$$y_{cm}=\frac{\int y\, dm}{\int dm}$$
$x=Rcos(\theta)$
$y=Rsin(\theta)$

$\int x\, dm = \int Rcos(\theta)dm = \int R cos(\theta) (\lambda dl) = \int R cos(\theta) \, \lambda \, R \,d \theta$
$$=\lambda R^{2}\int^{2\pi}_{0}cos(\theta)d \theta \enspace, \text{they come out of the integral since they are constants}$$
$$=0$$
!! center of mass of a ring is in the very center position $(0,0)$

Note, there is not mass there but there is the center there!

That is ok!


---
Usually, $\lambda$ can come out, but there can be cases where density is NOT uniform.


---
## 1Rocket Problem 
![[Physics/Honors Physics I/attachments/Drawing 24-10-10-01-04-17]]
Consider a rocket with changing mass $M(t)$ when it expels out mass at the rate $\gamma = \frac{dm}{dt}$
$M(t)=M_{0} - \gamma t$, assuming $\gamma=constant$

After $\Delta t$ time, ![[Physics/Honors Physics I/attachments/Drawing 24-10-10-01-08-23]]
The rocket has a velocity $v+\Delta v$, mass $M(t)- \Delta m$
$\Delta m = \gamma \Delta t$

Assuming that the mass is ejected at a constant relative velocity $u$.
i.e. the velocity of the mass ejected out relative to the rocket is $-u$

Hence, velocity of ejected mass $v_{\Delta m} = v + \Delta t - u$

NOW... 

Considering our Entire system, there are no net forces on it!
Hence, Momentum is conserved

Hence momentum of the objects combined must be initial momentum

$$M(t)v = (M(t)- \Delta m)(v + \Delta v) + m(v + \Delta v - u)$$
simplifying,
$$M(t) \Delta v = \Delta m u$$
using $\Delta m = \gamma \Delta t$,
$$M(t) \Delta v = \gamma  \Delta t \,u $$
$$\implies dv = \frac{\gamma u\,dt}{M(t)}=\frac{\gamma u\,dt}{M_{0}-\gamma t} $$
Hence, integrating from $0$ to $v(t)$ and $0$ to $t$,

$$v(t) = \gamma u ln|M_{0} - \gamma t| \cdot \frac{-1}{\gamma} \bigg|^t_0$$
$$\implies v(t) = u \,ln(\frac{M_0}{M(t)})= u\, ln(\frac{M_0}{M_{0}-\gamma t})$$

![[Physics/Honors Physics I/attachments/Drawing 24-10-10-01-22-11]]

So because you're kind of accelerating the system, increasingly (you're putting the same force but the mass is decreasing), your velocity increases in this sort of exponential way
```desmos-graph
left=0; right=1.5
bottom=-0.5
---
y=\ln{1/(1-x)}
```


---

# Conclusion and Other Insights
$$\vec{r_{com}} = \frac{m_{1}\vec{r_{1}} + \dots + m_{n}\vec{r_{n}}}{m_{1} + \dots + m_{2}}$$
The Center of Mass is the Weighed average of positions of all mass elements.

Differentiating the terms wrt. time, we can have
$$\vec{v_{com}} = \frac{m_{1}\vec{v_{1}} + \dots + m_{n}\vec{v_{n}}}{m_{1} + \dots + m_{2}}$$
& 
$$\vec{a_{com}} = \frac{m_{1}\vec{a_{1}} + \dots + m_{n}\vec{a_{n}}}{m_{1} + \dots + a_{2}}$$
Where $\vec{a_{com}} = \vec{F_{ext_{1}}}+\vec{F_{ext_{2}}} + \dots + \vec{F_{ext_{n}}}$

This is for discrete structures, but we can extend the idea into continuous structures with calculus.

$M = \iiint \rho(x,y,z) \,dx\,dy\,dx$ where $\rho(x,y,z)\,dx\,dy\,dz=dm$
for a mass density function $\rho(x,y,z)$.

the Center of mass, is gonna be $\displaystyle \frac{\sum m_{i} \vec{r_{i}}}{\sum m_{i}}$

for a continuous distribution, the limiting case becomes $$\vec{r_{com}}\displaystyle \frac{\int dm \, \vec{r}}{\int dm} = \frac{\iiint \vec{r}\,\rho(x,y,z)\,dx\,dy\,dz}{M}$$
You can have component wise case 
$$\vec{r_{comX}}\displaystyle \frac{\int dm \, \vec{x}}{\int dm} = \frac{\iiint \vec{x}\,\rho(x,y,z)\,dx\,dy\,dz}{M}$$
$$\vec{r_{comY}}\displaystyle \frac{\int dm \, \vec{y}}{\int dm} = \frac{\iiint \vec{y}\,\rho(x,y,z)\,dx\,dy\,dz}{M}$$

$\vec{v_{com}}$ and $\vec{a_{com}}$ are the velocities and accelerations of the center of mass of a body.

Because of Newton's 2nd law, all external forces change THESE quantities. 

So when we say an external force accelerates an object, it actually changes the acceleration of the Center of Mass which further affects the velocity of the Center of Mass!







