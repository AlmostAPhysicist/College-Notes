## Angular Momentum About Center of Mass 
$$\frac{d}{dt} \vec{L}_{about \, COM} = \vec{\mathcal{T}}_{about \, COM}$$

Of course this works for when the Center of Mass is an **Inertial** reference frame. 

But due to some magic, it also works for case where the Center of Mass for a body is **Non-Inertial**

---

So now you can decompose any Motion due to an external force into 2 things...

1. Translation of the center of mass 
	$\vec{F} = m \vec{a}$ or $\frac{d}{dt}\vec{p}_{total} = \vec{F}_{ext}$

2. Rotation of the parts of the object about the center of mass
	$\frac{d}{dt} \vec{L}_{about \, COM} = \vec{\mathcal{T}}_{about \, COM}$


---
## Energy 
Let the kinetic energy be $T$, for a single particle 

The translational kinetic energy we looked so far is $T = \frac{1}{2}mv^{2} = \frac{1}{2}m \vec{v} \cdot \vec{v}$

$\frac{dT}{dt} = \frac{1}{2}m \frac{d}{dt}(\vec{v} \cdot \vec{v}) = \frac{1}{2}m \dot{\vec{v}} \, \cdot \vec{v} \cdot 2$
$\implies \frac{dT}{dt} = \vec{F} \cdot \vec{v} = \vec{F} \frac{d\vec{r}}{dt}$

$\therefore dT = \vec{F} \cdot d\vec{r}$

Which means $$\boxed{\Delta T = T_{2} - T_{1} = \sum \vec{F} \cdot d\vec{r} = \int^{\vec{r_{2}}}_{\vec{r_{1}}} \vec{F} \cdot d\vec{r} = W(\vec{r_{2}} \to \vec{r_{1}})}$$
This is the Work-Kinetic Energy (or simply work energy theorem)

---

The integral here is a **line integral**. 

### Refresher on Line Integrals 
![[Mechanics/attachments/Drawing 25-09-26-11-07-43|100%]]




