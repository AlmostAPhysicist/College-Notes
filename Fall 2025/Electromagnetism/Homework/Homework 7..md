![[Electromagnetism/Homework/attachments/Drawing 25-10-24-07-37-16|100%]]

---

>(I lost my pen, so I am would be typing LaTeX. Writing this to confirm this is me and not a chatbot. For evidence, I do type in my class notes in LaTeX sometimes)

---

![[Electromagnetism/Homework/attachments/Drawing 25-10-24-10-25-03|100%]]

Given:
$$V(\rho,\phi,z)=V(\rho,\phi) = R(\rho)\Phi(\phi)$$
The Laplacian of a function for cylindrical coordinates:
$\nabla^{2}_{\rho,\phi}V = \frac{1}{\rho} \frac{\partial}{\partial \rho}(\rho \frac{\partial V}{\partial \rho}) + \frac{1}{\rho^{2}} \frac{\partial^{2} V}{\partial \phi^{2}}=0$

Plugging the value of $V$ as separate functions,

$0 = \frac{1}{R} \frac{d}{d\rho}(\rho \frac{dR}{d\rho}) + \frac{1}{\rho^{2}} \frac{1}{\Phi} \frac{d^{2}\Phi}{d\phi}$
$\implies \rho^{2} \frac{R''}{R} + \rho \frac{R'}{R} = \frac{-\Phi''}{\Phi} = constant$

$\rho^{2} \frac{R''}{R} + \rho \frac{R'}{R} = C$

$\implies \boxed{R'' + \frac{1}{\rho}R' + \frac{RC}{\rho^{2}} = 0}$
and $\boxed{\Phi'' = -C \Phi}$


Since we see this has something to do with the powers of $\rho$,
(and you told us in the hint)

Guess: $R = \rho^{\alpha}$
$\implies R' = \alpha \rho^{\alpha-1}$
$\implies R'' = \alpha(\alpha-1)\rho^{\alpha-2}$

Plugging this guess into the Differential equation in $R$

>$C$ can be greater than zero, less than zero, or equal to zero, each changes the solution of the differential equation

- If $C>0$

$\implies \rho^{2}(\alpha(\alpha-1)\rho^{\alpha-2}) + \rho(\alpha \rho^{\alpha-1}) - C \rho^{\alpha} = 0$

$\implies \alpha^{2}-\alpha + \alpha - C = 0$
$\implies \alpha = \pm \sqrt{C}$

$\boxed{R(\rho)=A_{1} \rho^{\sqrt{C}} + B_{1} \rho^{-\sqrt{C}}}$

and we know (out of experience, or you could just solve it by variable separation) that 

$\Phi'' = -C \Phi$ has a solution $\boxed{\Phi(\phi) = D_{1}\sin(\sqrt{C} \phi) + E_{1}\cos(\sqrt{C} \phi)}$

- If $C<0$
Let $K = -C$
$\implies \rho^{2}(\alpha(\alpha-1)\rho^{\alpha-2}) + \rho(\alpha \rho^{\alpha-1}) - C \rho^{\alpha} = 0$
$\implies \rho^{2}(\alpha(\alpha-1)\rho^{\alpha-2}) + \rho(\alpha \rho^{\alpha-1}) + K \rho^{\alpha} = 0$
$\implies \alpha^{2} - \alpha + \alpha + K = 0$
$\implies \alpha = \pm \sqrt{-K}, K>0$

<u>Aphysical solution</u>

(The solution is valid, but is never going to give purely real values)

- If $C=0$
$R'' + \frac{1}{\rho}R' = 0$

Using Integrating factor, 
$\frac{d}{d\rho}(\rho R')=0 \implies \rho R' = const$
 $\implies \boxed{R(\rho) = A_{0}+B_{0}\ln(\rho)}$

$\Phi'' = 0$
$\implies \boxed{\Phi(\phi) = D_{0}+E_{0}\phi}$


Since $V(\phi) = V(\phi + 2\pi)$, $E_{0}=0$
$D_{0} \neq 0$ since otherwise, $V$ would be zero everywhere in space.

So $\Phi(\phi) = constant$

---

So $C=0$ case:
$V(\rho, \phi) = A + B \ln(\rho)$
(the constant from $\Phi(\phi)$ gets absorbed)

So $C>0$ case:
$V(\rho, \phi) = (A_{1} \rho^{\sqrt{C}} + B_{1} \rho^{-\sqrt{C}})(D_{1}\sin(\sqrt{C} \phi) + E_{1}\cos(\sqrt{C} \phi))$

Since we want $V$ to be periodic in $\phi$, $\sqrt{C}$ must be an integer.

---
![[Electromagnetism/Homework/attachments/Drawing 25-10-24-11-29-45|100%]]
![[Electromagnetism/Homework/attachments/Drawing 25-10-24-11-31-54|100%]]

Given:
$$V(\rho,\phi,z)=V(\rho,\phi) = R(\rho)\Phi(\phi)$$
The Laplacian of a function for cylindrical coordinates:
$\nabla^{2}_{\rho,\phi}V = \frac{1}{\rho} \frac{\partial}{\partial \rho}(\rho \frac{\partial V}{\partial \rho}) + \frac{1}{\rho^{2}} \frac{\partial^{2} V}{\partial \phi^{2}}=0$

(Same equation as before, since the it has a cylindrical symmetry)

>So $C=0$ case:
$V(\rho, \phi) = A + B \ln(\rho)$
(the constant from $\Phi(\phi)$ gets absorbed)
>
>So $C>0$ case:
$V(\rho, \phi) = (A_{1} \rho^{\sqrt{C}} + B_{1} \rho^{-\sqrt{C}})(D_{1}\sin(\sqrt{C} \phi) + E_{1}\cos(\sqrt{C} \phi))$
>
>Since we want $V$ to be periodic in $\phi$, $\sqrt{C}$ must be an integer.

So we can use the same solution as before.

$V(\rho, \phi) = A + B\ln(\rho) + \sum_{k=1}^{\infty} (A_{k} \rho^{k} + B_{k}\rho^{-k})(D_{k}\sin(k \phi) + E_{k}cos(k \phi))$

Say the $\vec{E} = E_{0}\hat{x}$
$\implies V_{uniform} = -\vec{E_{0}} \cdot \vec{r} = -E_{0}x = -E \rho \cos(\phi)$
.
.
.
(I couldn't do this on time)

---

## Question 4

We have four point charges in the $xy$-plane forming a quadrupole:  
- $+q$ at $\left(\tfrac d2,\tfrac d2\right)$ and $\left(-\tfrac d2,-\tfrac d2\right)$,  
- $-q$ at $\left(\tfrac d2,-\tfrac d2\right)$ and $\left(-\tfrac d2,\tfrac d2\right)$.  
  
The Potential at a point $\mathbf r = (x,y)$ with $r = \sqrt{x^2 + y^2} \gg d$.    
Define the unit vector $\hat{\mathbf n} = \mathbf r / r = (\cos\phi,\sin\phi)$ so that $x = r\cos\phi$, $y = r\sin\phi$.

The exact electrostatic potential is  
$$  
V(\mathbf r)  
= \frac{1}{4\pi\varepsilon_0} \sum_i \frac{q_i}{|\mathbf r - \mathbf a_i|},  
$$  
where $q_i$ are the four point charges and $\mathbf a_i$ are their positions.  
  
For $r \gg d$, we expand each term in a Taylor expansion as we did in class:  
$$  
\frac{1}{|\mathbf r - \mathbf a|}  
= \frac{1}{r}  
\left[  
1  
+ \frac{\hat{\mathbf n} \cdot \mathbf a}{r}  
+ \frac{3(\hat{\mathbf n} \cdot \mathbf a)^2 - a^2}{2r^2}  
+ O\!\left(\frac{a^3}{r^3}\right)  
\right].  
$$  
  
So the potential becomes  
$$  
V(\mathbf r)  
\simeq  
\frac{1}{4\pi\varepsilon_0}  
\left\{  
\frac{1}{r} \sum_i q_i  
+ \frac{1}{r^2} \sum_i q_i (\hat{\mathbf n} \cdot \mathbf a_i)  
+ \frac{1}{2 r^3} \sum_i q_i \left[ 3(\hat{\mathbf n} \cdot \mathbf a_i)^2 - a_i^2 \right]  
\right\}.  
$$  
  
Now we analyze each term:  
  
1. Monopole term:  
$$  
\sum_i q_i = (+q) + (+q) + (-q) + (-q) = 0.  
$$  
So the $1/r$ term vanishes.  
  
2. Dipole term:  
$$  
\sum_i q_i \mathbf a_i = \mathbf 0  
\quad \Longrightarrow \quad  
\sum_i q_i (\hat{\mathbf n} \cdot \mathbf a_i) = 0.  
$$  
So the $1/r^2$ term vanishes.  
  
3. Quadrupole term:  
$$  
V(\mathbf r)  
\simeq  
\frac{1}{4\pi\varepsilon_0}  
\frac{1}{2 r^3}  
\sum_i q_i \left[ 3(\hat{\mathbf n} \cdot \mathbf a_i)^2 - a_i^2 \right].  
$$  
  
All four charges lie at distances  
$$  
a_i^2 = \left(\frac{d}{2}\right)^2 + \left(\frac{d}{2}\right)^2 = \frac{d^2}{2},  
$$  
so $a_i^2$ is the same for all $i$. But because the charges are $+q,+q,-q,-q$, the $\sum_i q_i a_i^2$ piece cancels.  
  
Therefore the only surviving contribution in the sum is  
$$  
\sum_i q_i (\hat{\mathbf n} \cdot \mathbf a_i)^2.  
$$  
  
Let $c = \cos\phi$, $s = \sin\phi$.  
Then,  
$$  
\hat{\mathbf n} \cdot \left(\frac{d}{2}, \frac{d}{2}\right)  
= \frac{d}{2}(c + s),  
\qquad  
\hat{\mathbf n} \cdot \left(\frac{d}{2}, -\frac{d}{2}\right)  
= \frac{d}{2}(c - s),  
$$  
and the two opposite-signed points give the same squares. Using the charge assignments $+q,+q,-q,-q$, we get  
$$  
\sum_i q_i (\hat{\mathbf n} \cdot \mathbf a_i)^2  
= q \frac{d^2}{4} \Big[ 2(c+s)^2 - 2(c-s)^2 \Big].  
$$  
  
Work that out:  
$$  
(c+s)^2 = c^2 + 2cs + s^2,  
\qquad  
(c-s)^2 = c^2 - 2cs + s^2.  
$$  
So  
$$  
(c+s)^2 - (c-s)^2 = 4cs.  
$$  
Therefore  
$$  
2(c+s)^2 - 2(c-s)^2  
= 2 \cdot 4cs  
= 8cs.  
$$  
So  
$$  
\sum_i q_i (\hat{\mathbf n} \cdot \mathbf a_i)^2  
= q \frac{d^2}{4} \cdot 8cs  
= 2 q d^2 c s .  
$$  
  
Plug that back into the quadrupole term:  
$$  
V(\mathbf r)  
\simeq  
\frac{1}{4\pi\varepsilon_0}  
\frac{1}{2 r^3}  
\left[  
3 \cdot (2 q d^2 cs)  
\right]  
=  
\frac{1}{4\pi\varepsilon_0}  
\frac{3 q d^2}{r^3} c s.  
$$  
  
Since $c = \cos\phi$ and $s = \sin\phi$,  
$$  
c s = \cos\phi \sin\phi = \frac{1}{2} \sin(2\phi),  
$$  
so we can also write  
$$  
V(r,\phi)  
\simeq  
\frac{1}{4\pi\varepsilon_0}  
\frac{3 q d^2}{2 r^3}  
\sin(2\phi).  
$$  
  
In Cartesian form, using $x = r \cos\phi$, $y = r \sin\phi$, note that  
$$  
\cos\phi \sin\phi  
= \frac{xy}{r^2},  
$$  
so  
$$  
V(\mathbf r)  
\simeq  
\frac{1}{4\pi\varepsilon_0}  
\frac{3 q d^2}{r^3}  
\cos\phi \sin\phi  
=  
\frac{1}{4\pi\varepsilon_0}  
\frac{3 q d^2\, x y}{r^5}.  
$$  
  
Final forms:  
  
$$  
V(r,\phi)  
\simeq  
\frac{1}{4\pi\varepsilon_0}  
\frac{3 q d^2}{2 r^3}  
\sin(2\phi),  
\quad  
r \gg d,  
$$  
  
or equivalently  
  
$$  
V(x,y)  
\simeq  
\frac{1}{4\pi\varepsilon_0}  
\frac{3 q d^2\, x y}{(x^2 + y^2)^{5/2}},  
\quad  
\sqrt{x^2 + y^2} \gg d.  
$$