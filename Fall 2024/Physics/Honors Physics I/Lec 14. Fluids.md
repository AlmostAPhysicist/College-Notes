### Some General Terms 
$P = \frac{F}{A}$
- $P = pressure$
- $F = force$
- $A = area$

#### Bullshit Units 
$1 atm = 1.01 \times 10^{5} Pa$
- $1 Pa = \frac{1N}{1m^{2}}$

![[Physics/Honors Physics I/attachments/Drawing 24-11-11-12-36-18]]

The reason we can lift our hands up even though air weights 100000 Newtons! is because somehow, pressure is applied uniformly in a fluid region (for the same height).

But why? 
Because it will keep flowing until the pressures aren't equal!
If you have a static equilibrium in a fluid, The pressures for a certain height must be equal!

That is...

## Pascal's Principle 

![[Physics/Honors Physics I/attachments/Drawing 24-11-11-12-39-53|800]]

For Static Equilliubrium,
$W + mg = N \qquad -(1)$

$P_{bottom} = \frac{N}{A}$
$P_{top} = \frac{W}{A}$
$V = A \cdot h$ (volume = area $\times$ height)

with that, rewriting equation $(1)$,
$P_{top}A + \rho A \Delta y g = P_{bottom}A$
Cancelling the $A$s,
$P_{top} + \rho \Delta y g = P_{bottom}$
hence, 
$P_{bottom}-P_{top} = \rho g \Delta y = \Delta P$

$\implies \frac{\Delta P}{\Delta y} = \rho g$

Or continuously, $$\frac{dP}{dy} = \rho g$$
So for a constant $\rho$,
$$P = P_{0} + \rho g y \qquad P_{0} \text{ is the pressure at top of fluid}$$

![[Physics/Honors Physics I/attachments/Drawing 24-11-11-12-52-45|500]]

As a consequence, you need higher support on the lower end of dams. The point to note though is that the support strength does NOT depend on the column length $L$ since that does NOT determine the pressure. Only the Height does!

---
Formally, 
Pascal's Principle:
“the pressure from a fluid will be transmitted undiminished throughout the container”.

### Use cases of Pascal's Principle 

#### Hydraulics
![[Physics/Honors Physics I/attachments/Drawing 24-11-11-01-03-15]]

By pascal's principle,
$P_{1} = P_{2}$
$\implies \frac{F_{1}}{A_{1}} = \frac{F_{2}}{A_{2}}$
Hence, $\frac{F_{1}}{F_{2}} = \frac{A_{1}}{A_{2}}$

For $A_{2}>>A_{1}$, you get a HUGE force on the other side of a hydraulic system by applying a very small force.

So by pressing lightly, you can lift a freaking car!

Violation of Conservation of Energy?
No! The volume is conserved, hence, like a pulley, the trade of here is force and distance.

You might lift a car with $100 \times$ more force,
But you have the push the jack down $100 \times$ greater distance.

---
## Archimedes Principle 
Eureka!
Things put in water displace water by the same volume as them!

![[Physics/Honors Physics I/attachments/Drawing 24-11-11-01-12-57|500]]


Buoyant force, is the Net force on an object due to the fluid it is dipped in.
Imagine you swap out the object with water. Since nothing outside changed, the pressure and force that the fluid applies on that column has to be the same. But for that case,
$F_{b} = mg$ where $m$ is the mass of water $\implies F_b = \rho_{water} V_{underwater} g$

That can be done for any object. Hence, for any object, $F_{b} = \rho_{water} V_{underwater} g$


We know that since the object is in static equilibrium,
$F_{b} = mg$
But here, mass of the object is $\rho_{object} Vg$
Hence, the net upward Force on an object is always $\rho_{water}Vg -\rho_{object}Vg = Vg(\rho_{water}-\rho_{object})$

So objects with lower density float and those with higher density sink.

---



