## Review 
We now know that objects have a certain capacity to store charge until they develop a certain potential. (Hence, the charge in the arrangement that has flowed in/out/across it for a certain potential it is exposed to)

This capacity is a property of their geometry.

$C = \frac{Q}{V} = k(\epsilon_{0} \times length)$ for a constant $k$

For a sphere, $C_{sphere} = 4\pi \epsilon_{0}R$
For a parallel plate capacitor, $C_{||plate} = \frac{A\epsilon_{0}}{d}$
For a spherical capacitor of 2 concentric conductors, $C_{2spherical} = \frac{4\pi\epsilon_{0}ab}{b-a}$
For a cylindrical capacitor of 2 concentric conductors, $C_{cyl} = \frac{2\pi\epsilon_{0} l}{ln(\frac{a}{b})}$ (or something like that)

For a $||plate$ capacitor, $\frac{Q}{A\epsilon_{0}} = \frac{\sigma}{\epsilon_{0}}=|\vec{E}|$

Work done is $$\frac{1}{2}\epsilon_{0}|E|^{2}(Ad) = \frac{1}{2}CV^{2}$$ $\qquad \{Ad = Volume\}$
Hence, energy density in an electric field is $\frac{1}{2}\epsilon_{0}|E|^{2}$


You can derive this a couple ways to derive this work done (and hence energy stored).

1. Have a charge $Q$ and $-Q$ on each plate, calculate force on 1 plate due to another and then pull the plates from distance $0$ to $d$.
2. Have the plates with distance $d$ but no charge. Then for each charge $dq$ you move across, the work done is $dW = dq \cdot V= dq \frac{q}{C}$
		Therefore, $W = int_{0}^{Q} \frac{q}{C}\,dq = \frac{Q^{2}}{2C} = \frac{1}{2}CV^{2}$

---

## Composing Capacitors together
![](Physics/Honors%20Physics%20II/attachments/Drawing%2025-02-28-12-45-40)
We can first argue that in series, any charge moving out of capacitor $C_{2}$, you would have to have the same charge moving in $C_{1}$. Hence, the charges on both must be the same ($Q$ and $-Q$).

---

![](Physics/Honors%20Physics%20II/attachments/Drawing%2025-02-28-12-53-25)
You can argue that for a capacitor, since there would be no flux for a Gaussian surface that has it's two ends inside the metals. Hence, charge enclosed must be zero inside. Hence, charge in the left plate would cancel the charge in the right plate.

Therefore, for a capacitor, you can prove that both plates would have opposite charge densities (at least on the inner surfaces)

---
$Q = C_{1}V_{1} = C_{2}V_{2}$

Or $V_{1} = \frac{Q}{C_{1}}$ and $V_{2} = \frac{Q}{C_{2}}$
$V = V_{1} + V_{2} = \frac{Q}{C_{1}} + \frac{Q}{C_{2}} = Q(\frac{1}{C_{1}} + \frac{1}{C_{2}})$

But $V = \frac{Q}{C_{eq}}$
$$\frac{1}{C_{eff}}= \frac{1}{C_{1}}+ \frac{1}{C_{2}} + \dots$$

### Series
![](Physics/Honors%20Physics%20II/attachments/Drawing%2025-02-28-12-48-47)

In this case, both capacitors would have the same potential across them (Since each of their sides are connected, they are at the same potential).

$V = \frac{Q_{1}}{C_{1}}= \frac{Q_{2}}{C_{2}}$
 Hence $Q_{1} = VC_{1}$ and $Q_{2} = VC_{2} \dots$

For the entire system, $C_{eq} = \frac{Q}{V}$ $\implies Q = C_{eq} V$
but $Q = Q_{1} + Q_{2}$
Hence, $C_{eq}V = Q = Q_{1} + Q_{2} + \dots = VC_{1} + VC_{2} dots = V(C_{1}+C_{2}+\dots) = C_{eq}V$
Hence:

$C_{eff} = C_{1} + C_{2} + \dots$

---

If you know about how resistors add up, resistance combining in series is the same as capacitors combine in parallel and vice versa.
# Dielectric 
$$\text{Super Conductors} \rightarrow \text{Conductors (metals)} \rightarrow \text{Semiconductors (silicon)} \rightarrow \text{Insulators}$$

We learnt earlier (Actually in the recitation) that if we slide a conductor within a capacitor then the conductor's surface charges arrange in a way to neutralize the electric field within the region they acquire. Hence, decreasing the region that the $\vec{E}$ field exists within the capacitor. Thereby decreasing the energy of the Capacitor.

---

Dielectrics (Really just insulators) behave differently.

![](Physics/Honors%20Physics%20II/attachments/Drawing%2025-02-28-12-59-59)

In an insulator, this is how molecules or atoms look like at microscopic scales.

In presence of an external electric field however, there are induced dipoles within the material.

(Depending on the material, the scale of dipole moment development can change — some only do it at a molecular scale and some, like iron, rearrange entire domains of dipoles that align well)

![](Physics/Honors%20Physics%20II/attachments/Drawing%2025-02-28-01-06-54|1000)

So in this case, instead of perfectly canceling the $\vec{E}$ field out, 
The $\vec{E}_{in} = \vec{E}_{external} - \vec{E}_{induced}$
$\implies \vec{E} = \frac{Q-Q_{B}}{A\epsilon_{0}}$
