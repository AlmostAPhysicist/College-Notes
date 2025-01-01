The principles of Thermodynamics were motivated by the idea of engines!

It just so happened that during their pursuit of the perfect, more efficient engines, they hit a roadblock that inherently depended on the microphysical picture of reality and some awesome physics.

---
## Temperature and Heat

Temperature relates to the average kinetic energy of subatomic particles.
Heat on the other hand, relates to a quantity of energy of a whole.

$Q = heat$ $\quad$ $[Q] = [Joules]$
$\Delta Q = mc \Delta T$
(I like to think as $c = \frac{\Delta Q}{m\Delta T}$)
$[T] = [Temperature] = [K(elvin)]$

(the idea is that the flow of heat is proportional to the change in temperature of the material and the mass of the material)
$[m]=[mass]=[kg]$
$c= \text{specific heat for a mass}$ is a property of a material.

A high specific heat (such as that for water) means the material has a high **resistance** to the change in temperature.

---
The addition of heat doesn't always change the temperature of a material however...
Sometimes adding heat doesn't change temperature. Such as during a phase change!
Adding heat to ice at it's melting point would not increase temperature but convert the ice to water before ever-changing the temperature.

$\Delta Q = m L$
$L =$ latent heat 
i.e. How much energy per mass is needed to cause a phase change.

>$L_{v}(water) = 2256 kJ/kg$

![[Physics/Honors Physics I/attachments/Drawing 24-12-02-12-35-57]]

Note, locally, there may be variations in temperature locally for a molecule. But it turns out that if a high energy molecule (a fast zipping molecule) is surrounded by molecules bound together by lattice bonds, the molecule hits the lattice molecules and transfers energy. Hence it turns out, at a macroscopic level, things do turn to first change state and only then do molecules gain kinetic energy as change in temperature. A constant temperature during phase change is a pretty good approximation for a macroscopic level.

---
## Gases and the gas law 
we know $PV=nRT$
![[Physics/Honors Physics I/attachments/Drawing 24-12-02-12-42-29]]
$\Delta F = \Delta p / \Delta t$
$\implies \Delta F \Delta t = \Delta p$

### Assumptions for the “Ideal State”
- Elastic collision 
- instantaneous collision 
- no loss of energy 

With these assumptions
$\Delta F \Delta t = 2mv_{x}$
Also, $2L = v_{x} \Delta t$

Hence, $\Delta F = \frac{2mv_{x}}{2L/v_{x}}=\frac{1}{L}mv_{x}^2$

$P = \frac{\Delta F}{A} = \frac{mv_{x}^{2}}{AL}=\frac{mv_{x}^{2}}{V}$

$\implies PV = mv_{x}^{2}$

But that was just for 1 particle 

For $N$ particles, $PV = Nmv_{x}^{2}$ for the $x$ direction 

For 3-D, there is no reason to have a bias for any particular direction 
$v_{avg}^{2} = v_{x_{avg}}^{2}+v_{y_{avg}}^{2}+v_{z_{avg}}^{2}$ but $v_{x_{avg}}=v_{y_{avg}}=v_{z_{avg}}$
Hence, $v_{avg}^{2} = 3v_{x_{avg}}^{2}$


$PV = Nm \frac{v_{avg}^{2}}{3}$
Assuming No vibrational degrees of freedom and monatomic gas, The $K_{avg} = \frac{1}{2}mv_{avg}^{2}$
$$\implies PV = \frac{2}{3}N K_{avg}$$

Now we **Assert/Claim** that temperature is related to Kinetic Energy 
by $$k_{B}T = \frac{2}{3}K_{avg}$$ (when in Equilibrium)
- $k_{B} = 10^{-23} J/K$ is the Boltzmann's constant as it turns out.

Therefore, $$PV = Nk_{b}T$$
$N =$ Number of particles
$P=$ Pressure 
$V=$ Volume 
$k_{b}=$ Boltzmann's Constant 
$T =$ Absolute Temperature 

$n = \text{\# of moles} = \frac{N}{\text{Molar Mass}}$


---
Key things to remember 

Around a certain Membrane, pressure inside and outside must at each instance for almost no change better be the same. 


---
Internal energy = $\#$ of molecules $\times$ kinetic energy per molecule (including translational, rotational, vibrational)

for monatomic has, $$U_{int} = NK_{avg} = \frac{3}{2}k_{B}T = \frac{3}{2}nRT$$
$dQ = mcdT$
but also, $dQ = nC_{v}dT$ ($C_{v} =$ specific heat at constant Volume)

For constant volume, No work is being done and hence, $dQ = dU_{int}$
$\implies nC_{v}dT = \frac{3}{2}nRdT$
$\implies C_{v}=\frac{3}{2}R$
(for a monatomic gas)

![[Physics/Honors Physics I/attachments/Drawing 24-12-02-01-16-28]]

---
## First Law of Thermodynamics 
$$\Delta U = \Delta Q - \Delta W$$
$\text{change in internal energy} = \text{Heat added} - \text{Work done BY the gas}$ (in chemistry, you consider work ON the gas, which is the negative of the work by the gas)

Essentially, supplying heat $\Delta Q$ would be utilized either to increase internal energy or do work. $\Delta Q = \Delta U + \Delta W$

State Variables and Path dependent variables:

- $Q$ and $W$ are path dependent variables (Area under curve does not Just depend on end points but also the curve itself)
- $U$ is a STATE variable (only dependent on the given state of the system and not the path it took to reach that state)

But wait... how can path dependent variables play into a composite path independent term?

Because you account for HEAT! You account for all dissipated forces. Hence you can have conservation of energy.
## Work & Gases — Different Processes

![[Physics/Honors Physics I/attachments/Drawing 24-12-02-01-20-19]]
$P=\frac{F}{A}$
$W = \int F\, dx$
$= \int P A \,dx$
$$\implies W = \int P\, dV$$
**All of Thermodynamics that we will talk about can be derived off of the following laws**
First law: $\Delta Q = \Delta U + \Delta W$
Calculus of Work by $\int F\, dx$ extending to gases: $\Delta W = \int P\, dv$
Assumptions of Ideal Gas:
$PV = nRT$
$U=\frac{f}{2}nRT$ is a state variable that is a function only of the temperature


### Isothermal (Constant Temperature)
(constant Temperature $\implies$ $PV = nRT \implies P \propto \frac{1}{V}$)
![[Physics/Honors Physics I/attachments/Drawing 24-12-02-01-23-04]]

Work done by has is Positive in physics since you extract work out of things.

So increasing the volume of a container (piston pushing up on something) would be positive work 

Hence, $W = \int P\, dV$
$\implies W = \int_{V_{1}}^{V_{2}} \frac{nRT}{V} dV = nRT ln|\frac{V_{2}}{V_{1}}|$

Since $V_{2}>V_{1} \implies ln|\frac{V_{2}}{V_{1}}| > 0 \implies W = positive$

Since the temperature is the same, the internal energy $\frac{f}{2}nRT$ (at least for the claim of an Ideal Gas) is also the same. Hence,
$\Delta Q = \Delta W$

Ahaa! So every bit of energy being added to the system is channeled into the work done and Immediately leaving.

---
### Isochoric (Constant Volume)
![[Physics/Honors Physics I/attachments/Drawing 24-12-05-12-52-37]]
$W = \int P \,dv$
(always true)

But in this case, There is no change in volume. Hence, $\Delta W = 0$. (area under a vertical line would be zero.)

Claim: The internal energy of the Ideal gas depends only on $T$ (not $P$ or $V$)
$\implies \Delta Q = \Delta U + \Delta W = \Delta U$

Hence, $U$ is just a function of temperature.
Hence, Change in $U$ is a function of change in temperature and since $\Delta Q = \Delta U$, 
$\Delta Q$ and $\Delta U$ are a function of $\Delta T$

with this claim, $$\Delta Q = n C_{v} \Delta T$$ (just a function of $\Delta T$ with some proportionality constants)
But we know for ideal condition claims, $U = \frac{f}{2}nRT \implies \Delta U = \frac{f}{2}nR \Delta T$
Hence, $C_{v} = \frac{f}{2}R$

---
### Isobaric (Constant Pressure)
![[Physics/Honors Physics I/attachments/Drawing 24-12-05-12-51-07]]

$W = \int P \, dv$
$= P \int \,dv = P\Delta V$
(since pressure is a constant)

Similarly, by the ideal gas law, $PV=nRT \implies P\Delta V = nR\Delta T$
$\implies \frac{f}{2}nR \Delta T = \frac{f}{2}P\Delta V$
$$\Delta Q = \Delta U + P \Delta V = \frac{f}{2}P\Delta V + P\Delta V = P\Delta V (\frac{f}{2}+1)$$

Now, since $P\Delta V = nR\Delta T$
We know $\Delta Q$ is a function of $\Delta T$

So assuming $\Delta Q = n C_{p}\Delta T$
$nC_{p}\Delta T = nR\Delta T (\frac{f}{2}+1)$
$\implies C_{p} = \frac{f}{2}R+R$

Notice how $C_{p} = C_{v}+R$
This is always true!
And $C_{v} = \frac{f}{2}R$ which for monatomic gases is $\frac{3}{2}R$

---
### Adiabatic (No Exchange of Heat)
![[Physics/Honors Physics I/attachments/Drawing 24-12-05-01-08-11]]

Our claim is that an Adiabatic process transfers us from one isotherm to another isotherm.

Now... how do we work this out?

By definition, $\Delta Q = 0$ (no heat exchange)

$\implies 0 = \Delta U + \Delta W$

For a very small change, 
$dU = - dW$
and since $dW = PdV$
$dU = -PdV$
since $\Delta U = \frac{f}{2}nR\Delta T = nC_{v}\Delta T$ hence, $dU = \frac{f}{2}nRdT = nC_{v}dT$

Hence, $dU = \frac{f}{2}nRdT = nC_{v}dT = -PdV$ $-(1)$

We know $PV = nRT$
$d(PV) = d(nRT)$
$dP \cdot V + P \cdot dV = nRdT$
$\implies ndT = \frac{(dP)V + P(dV)}{R}$

Substituting in $-(1)$, 
$\frac{C_{v}}{R}(dP\cdot V + P\cdot dV) = -P\cdot dV$
Hence, 
$C_{v}dP \cdot V + C_{v}P \cdot dV + RP \cdot dV$
$\implies C_{v}dP \cdot V + (C_{v}+R)P \cdot dV$
$\implies \frac{dP}{P} + \frac{dV}{V}\cdot \frac{C_{p}}{C_{v}}= 0$

Defining $\gamma = C_{p}/C_{v}$
$\int \frac{dP}{P} + \int \frac{dV}{V}\cdot \gamma = 0$

$\implies ln P + \gamma ln V = constant$
$\implies ln P + lnV^{\gamma} = constant$
$$\implies PV^{\gamma}= constant$$
Ahaa! Now $PV = nRT \implies TV^{\gamma-1} = constant$

(A very general form — a Polytropic process by the way can be written as $PV^{a}= cosntant$ where $a$ determines the type of process and everything can be broken down into this... for instance, $a=0$ means $P = const$ is isobaric!)

$\Delta U = \frac{f}{2}nR\Delta T$
But $T_{f}V_{f}^{\gamma-1}=T_{i}V_{i}^{\gamma-1}$
$T_{f}=(\frac{V_{i}}{V_{f}})^{\gamma-1}T_{i}$
$\implies T_{f}-T_{i} = T_{i}\left(\left(\frac{V_{i}}{V_{f}}\right)^{\gamma-1}-1\right) = \Delta T$
and in Adiabatic process, $\Delta Q = 0$
and hence, $\Delta W = \Delta U$






---

## Reversible and Irrespective
Reversible processes are actually very ideal. These processes are usually slow.
Only processes during which at each point in time, the system is in Equilibrium.

Anything that happens very rapidly in an uncontrolled manner would not be reversible.

---
Few things to look out for processes:
- rigid walls $\implies$ constant Volume $\implies$ No work 
- insulated walls $\implies$ no heat exchange 
- 



