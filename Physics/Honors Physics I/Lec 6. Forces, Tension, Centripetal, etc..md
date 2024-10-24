## Free Body Diagrams (Practice)

To draw a free body diagram, 
- represent the body as a Point
- represent all forces applied ON the body by vectors
- do NOT represent forces BY the Body

Let's Practice:

![[Physics/Honors Physics I/attachments/Drawing 24-09-23-01-11-01|1000]]


![[Physics/Honors Physics I/attachments/Drawing 24-09-23-01-13-48|1000]]

Now given that everything is stationary, you know each of the bodies have the net forces summing up to Zero!

#### Block 3
$F_{\text{2 on 3}} - F_{\text{g on 3}}=0$

#### Block 2
$F_{\text{1 on 2}} - F_{\text{g on 3}} - F_{\text{g on 2}}=0$

#### Block 1
$F_{\text{ground on 1}} - F_{\text{g on 1}} - F_{\text{2 on 1}}=0$


---
![[Physics/Honors Physics I/attachments/Drawing 24-09-26-12-26-32|800]]

The tension on rope being constant assumes a massless rope.

![[Physics/Honors Physics I/attachments/Drawing 24-09-26-12-28-50]]

Hence, if the rope has mass, the Tension up top would be canceling not only the tension at the bottom but (i.e. the mass of the Block) but also the mass of the Rope itself. (Hence, it's equal to the NET weight acting downward)

Assuming that the mass is uniformly distributed, the Mass beneath a certain point on the rope is uniformly deceasing and hence the weight beneath is uniformly decreasing.
Hence, the Tension is a linear function of the distance from top in this case.

## Friction 
1. Friction $\propto$ Normal Force 
2. Opposes relative motion

		![[Physics/Honors Physics I/attachments/Drawing 24-09-26-12-38-53|800]]
		$\sum \vec{F}=m\,\vec{a}$
		decomposing into components,
		$\sum \vec{F_{x}}= m\, \vec{a_x}$  &  $\sum \vec{F_{y}}= m\, \vec{a_y}$
		$-\mu N + mgsin(\theta)= m\, a_x$  &  $N - mgcos(\theta)=0$
		$\implies mgsin(\theta) - \mu \, mgcos(\theta)= m\, a_x$
		$\implies mg(sin(\theta)-\mu cos(\theta)) = m\, a_x$
		$$\implies a_x = g(sin(\theta)-\mu cos(\theta))$$
		dimensionally, $sin(\theta), cos(\theta), \mu$ are all dimensionless. Hence $a_x$ has the same dimensions as $g$.


## Velocity dependent Frictional forces
![[Physics/Honors Physics I/attachments/Drawing 24-09-26-01-00-57]]
Consider a ball in free fall.
Consider a velocity dependent force of friction (perhaps air drag). The coefficient $b$ depends on the object shape, material, etc.

$F_{net} = mg - bv = m\,a_{net}= m \frac{dv}{dt}$
$\implies \displaystyle dt = \frac{m}{mg-bv} \, dv$ {seperation of variables}
integrating both sides, 
for $t_{0}= 0, v_{0}= 0, t, v$
$\displaystyle \int_{0}^{t} dt = \int^{v}_{0} \frac{m}{mg-bv}\,dv$
$$t = m\, ln|mg-bv|\, \frac{-1}{b} \bigg|^v_0$$
$$t = \frac{-m}{b}\,(ln|mg-bv|-ln|mg|) = \frac{m}{b}\, ln|\frac{mg}{mg-bv}|$$
$$e^{t} = e^{\frac{m}{b}\, ln|\frac{mg}{mg-bv}|} = |\frac{mg}{mg-bv}|^{\frac{m}{b}}$$
$$e^{-t} = |\frac{mg-bv}{mg}|^{\frac{-m}{b}} = |1 -\frac{bv}{mg}|^{\frac{-m}{b}}$$
$$e^{\frac{-tb}{m}}=1-\frac{bv}{mg}$$
$$v(t) = \frac{gm}{b}(1-\,e^{-tb/m})$$
![[Physics/Honors Physics I/attachments/Drawing 24-09-26-01-16-28|1000]]

$$v(\infty) = \frac{gm}{b} = v_{terminal}$$