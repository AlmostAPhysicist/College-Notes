Vectors are independent of the coordinate system...

Now the one we're gonna use usually...

## Cartesian Coordinate System 
![[Physics/Honors Physics I/attachments/Drawing 24-09-12-12-38-22]]

- $\hat{i}$ is the unit vector in +x-axis direction
- $\hat{j}$ " +y-axis
- $\hat{k}$ " +z-axis 

Cross product:
![[Physics/Honors Physics I/attachments/Drawing 24-09-12-12-41-54]]

Dot Products:
$\hat{i}\cdot \hat{i}=1$
$\hat{j}\cdot \hat{j}=1$
$\hat{k}\cdot \hat{k}=1$
Inter crossing dot products is $0$. (nothing overlaps/casts a shadow!)


$\vec{A}+\vec{B}=(A_{x}\hat{i}+A_{y}\hat{j}+A_{z}\hat{k})+(B_{x}\hat{i}+B_{y}\hat{j}+B_{z}\hat{k})$
$=(A_x+B_x)\hat{i}+(A_y+B_y)\hat{j}+(A_z+B_z)\hat{k}$
Liking terms!

$\vec{A}\cdot\vec{B}=(A_{x}\hat{i}+A_{y}\hat{j}+A_{z}\hat{k})\cdot(B_{x}\hat{i}+B_{y}\hat{j}+B_{z}\hat{k})$
here, expanding out and copying the like terms, we realize x terms cancel out with all others and the only ones that do not vanish are 
$=(A_xB_x)+(A_yB_y)+(A_zB_z)$

Similarly, we expand out the thing for cross product but now instead of unlike terms canceling out, like terms cancel out

$\vec{A}\times\vec{B}=(A_{x}\hat{i}+A_{y}\hat{j}+A_{z}\hat{k})\times(B_{x}\hat{i}+B_{y}\hat{j}+B_{z}\hat{k})$
$=(A_yB_z-A_zB_y)\hat{i}+(A_zB_x-A_xB_z)\hat{j}+(A_xB_y-A_yB_x)\hat{k}$
The first term for each direction is just what we get for regularly use for cross product. The 2nd terms are those reversed and subtracted from the first term.

$$\left|\begin{array}{ccc}
\hat{i} & \hat{j} & \hat{k} \\
A_x & A_y & A_{z}\\
B_x & B_y & B_{z}\\
\end{array}\right|$$
The above determinant is equivalent way to compute the cross product.


# Now the Physics 

## 1-D
$$v(t)= \frac{dx}{dt} = \dot{x}$$
$$a(t) = \frac{dv}{dt} = \frac{d^2x}{dt^2}=\dot{v}=\ddot{x}$$

$v(t)= \frac{dx}{dt}$
$\implies v(t) \,dt=dx$
$\implies \int_{t_0}^{T} v(t)\,dt=\int_{x_0}^{x(T)} dx$


Suppose $v(t)$ is constant $\implies v(t)=v_0$
	
	$\implies \int_{t_0}^{T} v(t)\,dt=\int_{t_0}^{T} v_0\,dt$
	$= v_{0}(T-t_0)$
	
	$\int_{x_0}^{x(T)} dx=T-t_0$
	
	$x(T)=x_0+v_0(T-t_0)$
	if $t_0=0$,
	$$x(T)=x_0+v_0T$$
	i.e. we can find the position given a velocity function **IF** we know the starting position.

Suppose $a(t)$ is constant $\implies a(t)=a_0$
start at $t=0$, $x=x_0$, $v=v_0$
	
	$\implies \int_{t_0}^{T} a(t)\,dt=\int_{v(T)}^{v_0} \,dv$
	$\displaystyle a_0\,|^{T_0}=v|^{v(T)}_{v_0}$
	$a_0T=v(T)-v_{0}\implies v(T)= v_{0}+ a_0T$
	
	$v(t) = \frac{dx}{dt} = v_{0}+ a_0T$
	
	$\implies \int_{0}^{T} v(t)\,dt=\int_{0}^{x(T)} dx$
	$\implies \int_{0}^{T} (v_{0}+ a_0T)\,dt=\int_{0}^{x(T)} dx$
	$\implies v_0t|^T_0+\frac{a_0}{2}t^2|^T_0=v_0T+\frac{a_0}{2}T^2=x(T)-x_0$
	$$x(t)=x_0+v_0t+\frac{1}{2}at^2$$

# Dimentions

$distance$ always have to be a $distance$
The units must be that of distance!

$distance = constant\times acceleration\times (time)^2$

$$x=\alpha t^{2}+ \beta t^{\frac{2}{3}} + \gamma a^2$$
each term that you add will be distance!

$[x]=$ distance
$[t]=$ time
$[a]=$ acceleration
$[\alpha=\frac{distance}{t^{2}}]$
$[\beta]=\frac{distance}{time^{2/3}}$
$[\gamma]= \frac{distance}{a^{2}}=\frac{distance\cdot t^{4}}{distance^{2}}= \frac{t^{4}}{distance}$








