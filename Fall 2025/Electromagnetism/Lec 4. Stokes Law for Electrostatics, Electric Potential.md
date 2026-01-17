So in our study of this object, called the Electric Field, we studied one property of that object, i.e. $$\iint \vec{E}  \cdot d\vec{a} = \frac{1}{\epsilon_{0}}Q_{enc}$$
$$\vec{\nabla} \cdot \vec{E} = \frac{1}{\epsilon_{0}}\rho$$

---
$dW = \vec{F} \cdot d\vec{l}$
$W = q \int_{a}^{b} \vec{E} \cdot d\vec{l}$
(i.e., the Work done by the E field along a path from point $a$ to point $b$ is the Path integral of the Field from $a$ to $b$)



![[Electromagnetism/attachments/Drawing 25-09-11-03-59-20|100%]]



In Cartesian coordinates, 
$d\vec{l} = \hat{x} dx + \hat{y} dy + \hat{z} dz$

In Polar coordinates,
$d\vec{l} = \hat{r} dr + \hat{\theta}r d \theta + \hat{\phi} r sin(\theta) d \phi$

(In general, $d\vec{l}$ for any coordinate system has to do with the Jacobian, Hessian, etc. Read up on that to brush up (refer to Calc 3. Notes))

---

![[Electromagnetism/attachments/Drawing 25-09-11-04-07-41|100%]]

For **Electrostatics**, as we saw, since $\oint \vec{E} \cdot d\vec{l} = 0$, $\cases{\vec{\nabla} \times \vec{E} = 0 \\ \vec{\nabla} \cdot \vec{E} = \rho\frac{\vec{r}}{\epsilon_{0}}}$


---

$V(\vec{r}) - V(\vec{s}) = - \int_{\vec{s}}^{\vec{r}} \vec{E} \cdot d\vec{l} = \iint ((\vec{\nabla} \times \vec{E}) \cdot d\vec{A})$

$dV = \frac{\partial V}{\partial x}dx + \frac{\partial V}{\partial y}dy + \frac{\partial V}{\partial z}dz = (\vec{\nabla}V) \cdot d\vec{l}$

$\implies \int_{\vec{s}}^{\vec{r}} dV = \vec{V}(\vec{r}) - \vec{V}(\vec{s})= \int^{\vec{r}}_{\vec{s}} ((\vec{\nabla}V) \cdot d\vec{l})$

But we just saw $V(\vec{r}) - V(\vec{s}) = - \int_{\vec{s}}^{\vec{r}} \vec{E} \cdot d\vec{l}$

$\implies \int^{\vec{r}}_{\vec{s}} ((\vec{\nabla}V) \cdot d\vec{l}) = - \int_{\vec{s}}^{\vec{r}} \vec{E} \cdot d\vec{l}$
$\implies \vec{E} = - \vec{\nabla} V$

**i.e., $\vec{E}$ is the negative gradient of Potential**

---

![[Electromagnetism/attachments/Drawing 25-09-11-04-51-52|100%]]