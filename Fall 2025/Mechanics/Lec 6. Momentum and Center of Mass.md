## Momentum 
$\vec{p} = m \vec{v}$
$\vec{p} = \sum \vec{p_{i}}$
$\dot{\vec{p}} = \vec{F_{ext}}$


If $\vec{F_{ext}} = 0$, then momentum is conserved.

And since this is a vector equation, if you set things up in Cartesian coordinates for instance, you can treat each basis direction separately.

---
### Standard Example 

![[Mechanics/attachments/Drawing 25-09-19-10-27-42]]

### More Complex (But Standard) Example 
![[Mechanics/attachments/Drawing 25-09-19-10-30-44|100%]]

---

## Centre of Mass 
$\vec{R} := \frac{1}{M_{total}} \sum m_{i}\vec{r_{i}} = \frac{m_{1}\vec{r_{1}} + m_{2}\vec{r_{2}} + \dots m_{n}\vec{r_{n}}}{m_{1} + m_{2} + \dots m_{n}}$

but $\vec{p} = \sum \vec{p_{i}} = \sum m_{i} \dot{\vec{r_{i}}} = M \dot{\vec{R}}$

$\implies \boxed{\dot{\vec{P}} = M \ddot{\vec{R}} = \vec{F_{ext}}}$

So you may not be able to define the exact state of motion of every single particle in a body. But if you are concerned about the motion of the center of mass, which you can often approximate as the motion of the “body”, you can do that without any concern about the internal relative motions.

---

$\vec{R} = \frac{1}{M} \sum m_{i}\vec{r_{i}} = \frac{1}{M} \sum dm \vec{r} = \frac{1}{M} \int \vec{r} dm = \boxed{\frac{1}{M} \int \rho \vec{r} dV = \vec{R}}$

