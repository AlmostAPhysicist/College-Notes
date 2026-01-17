Again, as a refresher:

![[Mechanics/attachments/Drawing 25-09-30-10-27-48|100%]]

---

### Sliding Block 
![[Mechanics/attachments/Drawing 25-09-30-10-32-16|100%]]


---

Now we are going to do the opposite, instead of taking a Force and finding the Potential Field, we would go backwards.

It may seem like Potential, being a scalar field, has less information than the force itself since force is instead a vector. 

But, conservative forces are special Force Fields, as we know.

(In fact, it is ONLY for them that we can define a sensible Potential Field in the first place)

So for Conservative Forces, we can always go back and forth between Potential and Force field.

---

### Force as the gradient of Potential Energy 
![[Mechanics/attachments/Drawing 25-09-30-10-51-54|100%]]

Finally, reiterating on what gives for whether a force is conservative or not?
1. $\vec{F} = \vec{F}(\vec{r})$, i.e., $\vec{F}$ must be a function of position only.
2. $\vec{\nabla} \times \vec{F} = 0$, i.e., the cross product of the gradient and Force function is zero

Again, $\vec{\nabla} = <\frac{\partial}{\partial x}, \frac{\partial}{\partial y}, \frac{\partial}{\partial z}>$, you take the cross product by the determinant of $d\vec{r}$, $\vec{\nabla}$ and $\vec{F}$

(You can choose non-Cartesian coordinates, but that's a little clumsy)

Also, we didn't go over the proof here, but the proof really boils down to Stokes's Law and how it relates Forces and Potentials 
(Essentially how if $\vec{\nabla} \times \vec{F}=0$, path integrals are actually path dependent and how potential for a point can be defined nicely)

---

### Time Dependent Potential Energy?
Suppose $\vec{\nabla} \times \vec{F}=0$
But $\frac{\partial U}{\partial t} \neq 0$

![[Mechanics/attachments/Drawing 25-09-30-11-12-32]]

---
### Nice things about 1D
Notice that for any $1$ Dimensional force, $\vec{\nabla} \times \vec{F}$ is zero so any one dimensional force would already be conservative.

A nice thing about $1$ Dimension is also that we don't need to those those partial derivatives and need to worry only about THE derivative .


So, for $1-D$, $F_{x} = \frac{-dU}{dx}$

So given any Potential Function:

![[Mechanics/attachments/Drawing 25-09-30-11-20-09|100%]]

---
>It turns out that $1$ dimension is often quite special in this respect. This is our first instance of seeing this, but this special case behavior appears even in Quantum Mechanics and Quantum Field Theory.


### Example — Free Fall 
![[Mechanics/attachments/Drawing 25-09-30-11-35-49|100%]]


