>(The gravitation part was suppose to be a continuation of [[Physics/Honors Physics I/Lec 3. Motion and Acceleration|Lec 3. Motion and Acceleration]])

## Refresher
$$v(t)=v_0+a_0t$$
$$x(t)=x_0+v_0t+\frac{1}{2}a_0t^2$$
Hold true for constant acceleration.

You can derive the third kinematic equation by solving for $t$ in equation 1 and substituting it in equation 2.

That is how JPC does it.

I would like to do it some other way...

$a= \frac{dv}{dt} = \frac{dv}{dt}\cdot \frac{dx}{dx}$
nothing new...
Now realize how $\frac{dx}{dt}=v$.
Hence, $\frac{dv}{dt}\cdot \frac{dx}{dx}= \frac{dv}{dx}\cdot v=a$
$\implies v\, dv=a\,dx$
$\implies \int^{v}_{v_{0}}v\, dv= \int^{x}_{x_0}a\,dx$
which for constant acceleration 
$\implies \frac{v^{2}}{2}|^{v}_{v_{0}}= a\,x|^x_{x_0}$
$\implies v^2-v_0^2=2a_0(x-x_0)$

The trick is to write $a$ not as a function of $t$ but rather as a function of $v$ and $x$ only.


So the take-away is that you can derive equations on the go, given how things relate to each other.

---

## Higher Dimensions 
The idea is that when objects have motion in different directions, you can break the motion apart in the Cartesian components and treat everything independently.

$$\vec{r}(t)=x(t)\hat{i}+y(t)\hat{j}+z(t)\hat{k}$$
$\vec{v}(t)=\frac{\vec{r}}{dt}=(\frac{dx(t)}{dt}\hat{i} + x(t) \frac{d \hat{i}}{dt})+ (\frac{dy(t)}{dt}\hat{j} + y(t) \frac{d \hat{j}}{dt})+ (\frac{dz(t)}{dt}\hat{k} + z(t) \frac{d \hat{k}}{dt})$
Notice how every 2nd term in the parenthesis cancel. Therefore:

$$\vec{v}(t)=\frac{\vec{r}}{dt}=\frac{dx(t)}{dt}\hat{i} + \frac{dy(t)}{dt}\hat{j} + \frac{dz(t)}{dt}\hat{k}$$

Hence, you can treat x, y and z independently of each other.
(Given that your motion doesn't directly have coordinate sytems dependent)

## Gravity
Gravitational acceleration (for practical distances) is 1 such example of a nice, constant acceleration.

$$g\approx9.8\,m/s^2$$

Using what we saw earlier...
![[Physics/Honors Physics I/attachments/Drawing 24-09-16-12-53-05]]
You can now treat the x direction that has no acceleration
And y direction that has a constant acceleration g

$x(t)=x_0+v_0t+\frac{1}{2}a_{x}t^{2}=v_{0}t\,\quad \{x_0=a=0\}$
$y(t)=y_0+v_0t+\frac{1}{2}a_yt^2=v_0t+\frac{1}{2}a_yt^2$

Solving for t in eq 1 and substituting in y, we get 
$$y(x)=v_y(\frac{x}{v_{x}})- \frac{1}{2} g( \frac{x}{v_{x}})^2$$

# Circular Motion 
Suppose I have a uniform circular motion, i.e. speed is constant.

![[Physics/Honors Physics I/attachments/Drawing 24-09-16-01-08-15]]

$x=rcos\theta$
$y=rsin\theta$
$r=\sqrt{x^2+y^2}$
$\theta=tan^{-1}(\frac{y}{x})$

### Setting up the polar coordinates
![[Physics/Honors Physics I/attachments/Drawing 24-09-16-01-14-26]]
We define $\vec{\theta}$ to be $\perp$ to $\vec{r}$
$|\vec{\theta}|=\theta$


$\vec{r}=r \hat{r}$
$\vec{v}= \frac{d\vec{r}}{dt}= \frac{dr}{dt}\hat{r} + r \frac{d\hat{r}}{dt}=r \frac{d\hat{r}}{dt}$ (r is a constant)
$\vec{a}= \frac{d(\vec{v})}{dt}= \frac{d(r \frac{d\hat{r}}{dt})}{dt}\hat{r}= \frac{dr}{dt} \frac{d\hat{r}}{dt} + r \frac{d^2\hat{r}}{dt^2}=r \frac{d^2\hat{r}}{dt^2}$ (r is constant so it's derivative is 0)

We have everything in terms of $\hat{r}$ and $\hat{\theta}$. Now we want everything to be in $\theta$.

Using:
$\hat{r}=cos(\theta)\hat{i}+sin(\theta)\hat{j}$
$\hat{\theta}=-sin(\theta)\hat{i}+cos(\theta)\hat{j}$
$\frac{d\hat{\theta}}{dt}=-\hat{r}$

We further solve the above equations for $\vec{v}$ and $\vec{a}$

$\vec{v}=r\frac{d\hat{r}}{dt}=r\hat{\theta}\dot{\theta}$
$\vec{a}=\frac{d\vec{v}}{dt}=\frac{d(r\hat{\theta}\dot{\theta})}{dt}= r(\ddot{\theta}\hat{\theta} + \dot{\theta} \frac{d\hat{\theta}}{dt})=r(\ddot{\theta}\hat{\theta} + \dot{\theta} (-\hat{r})) = r\alpha \hat{\theta} - r\omega^{2}\hat{r}$

---
And ofc... I derived it in my own time as well... Correctly this time!
![[Physics/Honors Physics I/attachments/Circular Motion Acceleration Derivation  (1).jpg]]
![[Physics/Honors Physics I/attachments/Circular Motion Acceleration Derivation  (2).jpg]]

Basically, you set up the usual definitions of $\theta, r, \hat{\theta}, \hat{r}, \vec{v}, \vec{a}, \dot{\theta}, \ddot{\theta}$. 

---
(Here the only unintuitive thing here is $\vec{\theta}$ which by definition is a vector with $|\vec{\theta}|=\theta,\enspace \vec{\theta}\perp \vec{r}$)
1 Problem in the derivation is that $|\vec{r}|=R$ which is our defined constant. Our $r$ (little r) is a variable in the polar coordinates. But apart from the naming, it doesn't matter much.
R is constant, $\hat{r}$ is a function of $\theta$ which itself is a function of $t$.

---

Using implicit definition (or rather just chain rule), you find $\frac{d\hat{r}}{d\theta}, \frac{d\hat{\theta}}{d\theta}$ and hence multiplying both by $\frac{d\theta}{dt}$ or simply $\omega$, you find 
$$\frac{d\hat{\theta}}{dt}=-\hat{r}\, \dot{\theta}$$
$$\frac{d\hat{r}}{dt}=\hat{\theta}\, \dot{\theta}$$
simply due to the properties of sin and cosine functions and their derivatives.

Then, you just plug in these results in your definitions of $\vec{v}=\frac{d\vec{r}}{dt}$ and $\vec{a}=\frac{d\vec{v}}{dt}$
while taking into consideration the [[Maths/Calc 1/Product Rule|Product Rule]] for Derivatives.

And whoosh! Out pop these equations
$$\vec{v}=r\,\dot{\theta}\,\hat{\theta}=r\,\omega\,\hat{\theta}$$
$$\vec{a}=r\,\ddot{\theta}\,\hat{\theta} -r\,(\dot{\theta})^2\,\hat{r}=r\,\alpha\,\hat{\theta} -r\,\omega^2\,\hat{r}$$
---
## Deeper Questions about Why 
We chose polar coordinates because $|\vec{r}|=R$, and it is a constant!
So it makes to have polar coordinates because 1 of the parameters is constant!

That way, we can study about the problem in polar coordinates and then translate it to translational motion.


$\vec{a}=\vec{a_{centripetal}}+\vec{a_{angular}}=-R \omega^{2}+ R \alpha \hat{\theta}$
Our constraints say the R is constant. But we CAN have a changing speed to traverse along the circle. Hence, you can have angular acceleration and so things can speed up. BUT! to maintain that circular trajectory, because $\omega$ and $\alpha$ are related, $\vec{a_{centripetal}}$ would have to correct itself accordingly.