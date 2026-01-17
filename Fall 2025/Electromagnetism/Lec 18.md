Recap:
![[Electromagnetism/Lec 17 Magnetism#Cycloid Motion|Lec 17 Magnetism]]

We were yet to figure out the constants $A, C_{1}, \phi$

![[Electromagnetism/attachments/Drawing 25-11-06-03-54-15|100%]]


![[Electromagnetism/attachments/Drawing 25-11-06-04-06-00|100%]]


![[Electromagnetism/attachments/Drawing 25-11-06-04-27-24|100%]]


---

## Biot Savart Law
- Currents (moving charges) generate $\vec{B}$
	- $j[\frac{q}{l^{2}t}] = \frac{A}{m^{2}}$
	- $\vec{\nabla} \cdot \vec{j} = 0$ (conservation of charge)
		- (Sort of like Gauss's law for magnetism... the net flux of current density is zero because there can not be a source or sink of current... no current monopoles)
- Consider the case of <u>Steady</u> current
	- $\frac{\partial \vec{j}}{\partial t} = 0$
- In Electrostatics:
	- $$\vec{E} = \frac{1}{4\pi\epsilon_{0}} \iiint \frac{\rho(\vec{r'})}{\mathbb{r}^{2}} \hat{\mathbb{r}} d\tau'$$
	-  $\rho \to \sigma \to \lambda$
		- $\implies \frac{1}{4\pi\epsilon_{0}} \iint \frac{\sigma}{\mathbb{r}^{2}} \hat{\mathbb{r}} da$
		- $\implies \frac{1}{4\pi\epsilon_{0}} \int \frac{\lambda \hat{\mathbb{r}}}{\mathbb{r}^{2}} dl$
- In Magnetism
	- $$\vec{B} = \frac{\mu_{0}}{4\pi} \iiint \frac{\vec{j}(\vec{r'}) \times \hat{\mathbb{r}}}{\mathbb{r}^{2}} d\tau'$$
	- $\vec{j} \to \vec{k} \to \vec{I}$
		- $\vec{B} = \frac{\mu_{0}}{4\pi} \iint \frac{\vec{k}(\vec{r'}) \times \hat{\mathbb{r}}}{\mathbb{r}^{2}} da$
		- $\vec{B} = \frac{\mu_{0}}{4\pi} \int \frac{\vec{I}(\vec{r'}) \times \hat{\mathbb{r}}}{\mathbb{r}^{2}} dl$

---

