So we learned we can provide heat to a system to get some work done.

You can not convert heat fully, 100% into useful work.

This idea was first explored in context of Engines. But it turns out that this is a deep idea, with connect to Information theory, Physics, Chemistry, everything!

This, in some sense, may be what gives legitimacy to time itself!

---
>Engine converts heat into work & discards the remaining heat 

$Q_{H} = W + Q_{c}$
- $Q_{H}$ is the source of heat 
- $Q_{c}$ is the discarded heat 

Given that, $efficiency = \epsilon = \frac{W}{Q_{H}}$ (The work you get from the heat you input)
$\implies \epsilon = 1- \frac{Q_{c}}{Q_{H}}$

---
There's different cycles proposed to minimize $Q_{c}$ (Notice how the efficiency is going to be 0 if all heat provided is used to increase internal energy)

## Otto Cycle 
![[Physics/Honors Physics I/attachments/Drawing 24-12-09-12-46-52|800]]

The curve defining adiabatic is $PV^{\gamma}=const$, $TV^{\gamma-1}=const$, $\gamma=\frac{C_{p}}{C_{v}}$

For the isochoric/isovolumetric processes, $P \propto T$ hence, you're changing the temperature
$\Delta U = 0$

And hence, $Work = \Delta W = \Delta Q$

---
$A \rightarrow B$ is Compression Stroke (adiabatic)
$B \rightarrow C$ is Ignition (heat added)
$C \rightarrow D$ is Power Stroke (work being done)
$D \rightarrow A$ is Exhaust (Heat Lost)

$Q_{c} = nC_{v}\Delta T = nC_{v}(T_{D}-T_{A})$ (isovolumetric Heat loss/addition — Lost in Heat)
$Q_{H} = nC_{v}\Delta T = n C_{v}(T_{C}-T_{B})$


$T_{C}V^{\gamma-1} = T_{D}(rV)^{\gamma-1}$
$T_{A}V^{\gamma-1} = T_{B}(rV)^{\gamma-1}$


$\implies T_{C} = T_{D}r^{\gamma-1}$
$\implies T_{A}r^{\gamma-1} = T_{B}$

$\epsilon = 1- \frac{nC_{v}(T_{D}-T_{A})}{nC_{v}(T_{C}-T_{B})}$
$\epsilon = 1 - \frac{T_{D}-T_{A}}{T_{C}-T_{B}}$
$\implies \epsilon = 1- \frac{T_{D}-T_{A}}{T_{D}r^{\gamma-1}-T_{A}r^{\gamma-1}}$
$\implies \epsilon = 1-\frac{1}{r^{\gamma-1}}$
Which for monatomic gasses is about $55\%$

Notice how
The energy lost is during $D \rightarrow A$ where you decrease Pressure at constant Volume. (i.e. you give out heat)

---
## Carnot Cycle 

![[Physics/Honors Physics I/attachments/Drawing 24-12-09-01-15-24]]
(Internal Energy is constant in Isothermal)
$\Delta Q = \Delta W$

>Maximum possible efficiency

$Q_{H} = nRTln|\frac{V_{B}}{V_{A}}|$
$Q_{C} = nRTln|\frac{V_{D}}{V_{C}}|$

$\epsilon = 1 - \frac{Q_{c}}{Q_{H}}$
$\epsilon = 1- \frac{T_{h}}{T_{h}} ln| \frac{V_{D}/V_{C}}{V_{B}/V_{A}}|$
$T_{H}V_{B}^{\gamma-1} = T_{L}V_{C}^{\gamma-1}$
$T_{H}V_{A}^{\gamma-1} = T_{L}V_{D}^{\gamma-1}$

$\implies \frac{T_{l}V_{D}^{\gamma-1}}{T_{l}V_{C}^{\gamma-1}} = \frac{T_{h}V_{A}^{\gamma-1}}{T_{h}V_{B}^{\gamma-1}}$
$\implies \frac{V_{D}}{V_{C}}= \frac{V_{A}}{V_{B}}$
$\implies \epsilon = 1- \frac{T_{L}}{T_{H}}$

