## Applying and Using Newton's Laws of Motion 
Really, we just use the 2nd law for the most part. The first law, just sets the stage for the reference frame (defining that these laws are applicable only in inertial reference frames... which is actually a definition of an inertial frame of reference, a constant velocity object is an example of which.) Third law often is useful to give additional equations for a system.

---
$$\vec{F} = m \ddot{\vec{r}}$$
Vector, 2nd order differential equation. 
Solution is a function $\vec{r}(t)$

Again, to define a vector, it is convenient to set a coordinate system (preferably inertial).
>Note: The equation works in ANY coordinate system, as long as the coordinate system is inertial.
>Really, all it says is ![[Mechanics/attachments/Drawing 25-09-05-10-44-18]]
>It takes a vector and maps it to another vector. Now you can define any coordinate system around the vector to mathematically represent this, but the vector doesn't care.

Usually, we work with the *Cartesian Coordinate*.

$\vec{F} = F_{x}\hat{x} + F_{y}\hat{y} + F_{z}\hat{z}$
$\vec{r} = x \hat{x} + y \hat{y} + z \hat{z}$
$\dot{\vec{r}} = \dot{x} \hat{x} + \dot{y} \hat{y} + \dot{z} \hat{z}$ (we can write this BECAUSE for now, the Cartesian coordinate system is not moving with time, otherwise, $\frac{d}{dt}(f \vec{a}) = \frac{\partial f}{\partial t}\vec{a} + f\frac{\partial \vec{a}}{\partial t}$)
similarly, $\ddot{\vec{r}} = \ddot{x} \hat{x} + \ddot{y} \hat{y} + \ddot{z} \hat{z}$

$\implies F_{x} = m \ddot{x} = ma_{x}$
$F_{y} = m \ddot{y} = ma_{y}$
$F_{z} = m \ddot{z} = ma_{z}$






### Examples 
![[Mechanics/attachments/Drawing 25-09-05-10-52-58]]

The general approach would usually include 

1. Choose a Reference Frame 
2. Make picture, plot forces, (at for now, when necessary, use 3rd Law)
3. Write 2nd Law 
4. Use constraints (adding more equations)**
5. Solve the system of equations 

![[Mechanics/attachments/Drawing 25-09-05-10-56-55|100%]]




## Funny things that happen by choosing coordinate systems
Consider two charged particles moving perpendicular to each other.
![[Mechanics/attachments/Drawing 25-09-05-11-33-26]]

You see here that Newton's third law actually doesn't work!
Actually, Momentum is still conserved. But Newton's laws do not take into account that Electromagnetic fields also have momentum. The sum of the momentum of the particles as well as the electromagnetic field IS actually conserved.


