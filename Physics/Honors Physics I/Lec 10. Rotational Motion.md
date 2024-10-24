![[Physics/Honors Physics I/attachments/Drawing 24-10-14-12-30-55]]
From [[Physics/Honors Physics I/Lec 4. Gravitation and Higher dimension motions#Circular Motion|Lec 4. Gravitation and Higher dimension motions]] we know

$\vec{r}=r \hat{r}$
$\vec{v}= \frac{d\vec{r}}{dt}= \frac{dr}{dt}\hat{r} + r \frac{d\hat{r}}{dt}=r \frac{d\hat{r}}{dt}$ (r is a constant)
$\vec{a}= \frac{d(\vec{v})}{dt}= \frac{d(r \frac{d\hat{r}}{dt})}{dt}\hat{r}= \frac{dr}{dt} \frac{d\hat{r}}{dt} + r \frac{d^2\hat{r}}{dt^2}=r \frac{d^2\hat{r}}{dt^2}$ (r is constant so it's derivative is 0)
$$\vec{v}=r\,\dot{\theta}\,\hat{\theta}=r\,\omega\,\hat{\theta}$$
$$\vec{a}=r\,\ddot{\theta}\,\hat{\theta} -r\,(\dot{\theta})^2\,\hat{r}=r\,\alpha\,\hat{\theta} -r\,\omega^2\,\hat{r}$$
$\vec{a}=\vec{a_{centripetal}}+\vec{a_{angular}}=-R \omega^{2}+ R \alpha \hat{\theta}$

---
In this lecture, we discuss Rotation and the energy associated with it.

## Rigid Body
- When all points are at a fixed distance from each other.
- i.e. the relative position for all parts of the object are constant.

### Axis of Rotation 
- There is an axis of rotation about which all points in the object have the same rotational motion
- Points on the objects about this axis of rotation have the same **Angular Velocity ($\omega$)** at any given moment in time 
---
### To generalize $\omega$ to $\vec{\omega}$ and $\alpha$ to $\vec{\alpha}$
For any rotation, say along the $x$ axis, $y$ axis, on top, on head, anything... the rotation is defined for the **Axis** of rotation!

So we give the direction of the scalar $\omega$ (Angular Velocity) and give it a direction along the Axis of rotation.

Depending out the direction of rotation (clockwise/anticlockwise), we assign the direction in/out of the plane of rotation (by using the Right-hand rule)

![[Physics/Honors Physics I/attachments/Drawing 24-10-14-12-49-45|1000]]


**Note**!
---
This is not the change in direction of our $\vec{\theta}$ as we define it earlier!
The change in that previously defined theta DOES not change in the direction of the axis of the rotation!

**If** you define $\vec{\theta}$ such that $\hat{\theta}$ points in the axis of rotation, you have a problem!
Since then, the rotation groups are non commutative!
$\vec{\theta_{1}}+ \vec{\theta_{2}} \neq\vec{\theta_{2}}+ \vec{\theta_{1}}$

So you can not define the $\vec{\theta}$ in the direction of the axis of rotation.

But it turns out you CAN define the Angular Velocity ($\omega$) in the direction since taking the limit of the error goes to Zero as $\omega = \frac{d\theta}{dt}$

*Essentially, the entity that you get from differentiating our formal definition of the $\vec{\theta}$ isn't so useful and the entity that you differentiate to get the useful $\vec{\omega}$ doesn't have nice vectorial properties! (Rotation is a [[Maths/Intro to Linear Algebra/Lec 6. Linear Transformations|matrix transformation]], not a vector! So two consecutive rotations can end up in different things depending on the order since the matrix multiplication is non commutative).*
*Hence, you have a subtle disconnect between vectors and rotational mechanics.*


Hence,
$\vec{\theta}$ is defined only for Circular Motion along the Tangent and NOT the axis of rotation.
The $\vec{\omega}$ (and $\vec{\alpha}$) are rather defined ALONG the axis or rotation and doesn't break group symmetry!

(Question... Then what IS the actual vector that is the differential of the $\vec{\theta}$ we defined and what is the defined $\vec{\omega}$ the differential of?)

---
$K =\displaystyle \sum_{i} \frac{1}{2}m_iv_i^2$
Break K into $K = K_{\text{rotational}} + K_{\text{translational}}$
( #funfact Non Trivial! Euler proved this through something)

For a rotating system with no translational energy,

$K =\displaystyle \sum_{i} \frac{1}{2}m_iv_i^2=K_{\text{rotational}}$
$\displaystyle = \sum_{i} \frac{1}{2}m_{i}(\omega R_{i})^{2}$ About the axis of rotation since for a rigid body, $v_{i}=R_{i}\omega$
$\displaystyle = \frac{1}{2}\omega \sum_{i} m_{i}(R_{i})^{2}$
$\displaystyle \frac{1}{2}I \omega^2$ where $\displaystyle I = \sum_{i} m_{i} R_{i}^{2}$ called Moment of Inertia

$I$ plays the same role in rotational motion as $mass$ plays in translational motion.
Note how they are different entities and we will see what relation they have, but for the different Coordinate/Kinetic Reference (Translational vs Rotational), they play the same role.

---
## Calculating Moment of Inertia for Different Objects 

### Ring

![[Physics/Honors Physics I/attachments/Drawing 24-10-14-01-11-12]]


As an integral, the Sum $\sum_{i} m_{i}R_{i}^2$ becomes $\int dm \, R^2$
For a ring, every mass element $dm$ has the same $R$, hence it pops out as a constant and hence
$I_{\text{ring}}=MR^2$ where $R^2$ as a constant pops out of the integral and $\int dm = M$

### Disk 
![[Physics/Honors Physics I/attachments/Drawing 24-10-14-01-14-18]]

Total Mass $M$ is uniformly distributed across a circular disk of Area $\pi R^2$
Hence, the Area Density $\sigma = \frac{M_{\text{total}}}{A_{\text{total}}} = \frac{M}{\pi R^{2}}$
Hence, area of the dm element is the circumference of the ring $dA = 2\pi r \times dx$ i.e. giving the slice a slight width
Hence, $dm = \sigma dA = \sigma \, 2\pi r dx$
Hence, $$\int dm \,r^{2}= \int_{0}^{R} (\sigma \, 2\pi r \,dx)\, r^{2}= 2\pi\sigma \, \frac{r^{4}}{4} \bigg|^{R}_{0}= \frac{1}{2}MR^2$$
Ahaa! For the same Mass and Radius, the Ring has a higher Moment of Inertia than the Disk hence it will have a higher Rotational Kinetic Energy.

Hence, for the same Potential Energy, more of it will be lost to Rotational Energy in the Ring and hence it will hence have a Lower Kinetic Energy.

Thus, sliding down the ramp, A Disc rolls down Slower than the Ring.

---

Things can be easier to rotate in a certain orientation as compared to some other orientations. Since the resistance to rotation IS the moment of Inertia, this hints that **Moment of Inertia can be different for different pivot points for the same object**.





