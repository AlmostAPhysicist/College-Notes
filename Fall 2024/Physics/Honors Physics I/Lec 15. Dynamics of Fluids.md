Fluid dynamics, actually isn't understood quite well (Navier Stokes!), and often not taught well beyond the fact that you get meaningful insights and answers by solving some complex differential equations numerically.

But there are a few key concepts that can be helpful...

## Continuity 
![[Physics/Honors Physics I/attachments/Drawing 24-11-14-12-34-29]]

Flow is how much fluid do we push through per unit time.

Let's say the fluid is moving with a constant velocity $v$ across a column of length $L$ and cross sectional area $A$.

Let $Q = flow$
which has to be the volume of the fluid massing through in a unit time.
$Q = \frac{Vol}{t} = \frac{A \cdot L}{t}$
But we know $v = \frac{L}{t}$
so $Q = Av$ is the flow of the fluid.

But what happens when the column changes the cross-sectional area?

![[Physics/Honors Physics I/attachments/Drawing 24-11-14-12-39-08]]

**Given that the fluid is incompressible**, 
The thing coming in has to move at the same time.
Given that the fluid completely fills the container, 

**The flow has to be the same at each point!**

Considering each little section of column to be a little cylinder, flow at each cross section is $A_{i}v_{i}$

Hence, we should have $$A_{1}v_{1}=A_{2}v_{2}$$
$\implies v_{1} = v_{2} \frac{A_{2}}{A_{1}}$
I.e. you again have a tradeoff between the velocity and the Area, only to maintain the flow constant for an incompressible fluid. Given that most liquids are typically incompressible, this is useful!

---
## Bernoulli's Principle

$P + \frac{1}{2} \rho v^{2} + \rho g y = constant$

$PV + \frac{1}{2}mv^{2} + mgh = constant$

$PdV = \text{Work done by the fluid}$
$\frac{1}{2}m\Delta v^{2} = \Delta K = Work_{\text{total on fluid}} = Work_{\text{non-conservative}} + Work_{\text{conservative}}$

$\implies \frac{1}{2}m\Delta v^{2} = - Work_{fluid} - \Delta U = -P\Delta v + mg\Delta h$


Essentially, High Velocity causes Low pressure. (Or perhaps the pressure gradient causes high winds.)

---

## Venturi Meter 
![[Physics/Honors Physics I/attachments/Drawing 24-11-14-01-07-58]]

The Pressure that is on both open ends is $P$

$$P + \frac{1}{2} \rho v_{1}^{2} + \rho g y_{1} = P + \frac{1}{2} \rho v_{2}^{2} + \rho g y_{2}$$
$$\implies \frac{1}{2}v_{2}^{2} - \frac{1}{2}v_{1}^{2} = g \Delta y$$
$$ \implies v_{1}^{2} (\frac{A_{1}}{A_{2})^{2}}- v_{1}^{2} = 2g \Delta y$$
$$ \therefore v_{1} = \sqrt{\frac{2g\Delta y}{(\frac{A_{1}}{A_{2}})^{2} - 1}}$$
So only by setting this up, you can know the speed of a fluid by noting the difference in fluid height, given the initial parameters of the apparatus.