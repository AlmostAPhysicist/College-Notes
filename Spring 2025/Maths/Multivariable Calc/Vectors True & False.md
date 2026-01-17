Aryan Malhotra

---
1. $u \cdot u = |u|$
**False.**
	For instance, $(2, 0) \cdot (2, 0) = 4$ 
	While $|(2,0)| = 2$
		($u \cdot u = |u|^{2}$ instead)

---
2. $u \cdot v > 0 \implies \text{angle between the vectors is acute}$
**True.**
	Since $u \cdot v = |u||v|cos(\theta)$
	Hence, if $u \cdot v$ is positive, $\implies cos(\theta)>0 \implies \theta \in [0, \pi)$ 
	($|u||v|$ is positive by definition)

---
3. $|u \times v| = |u||v|cos(\theta)$
**False.** 
	($|u \times v| = |u||v|sin(\theta)$ instead)
	$(1,0) \times (1, 0) = (0,0)$ (since $u \times u = \vec{0}$) 
	But as per the given formula, $(1,0) \times (1,0) = 1$ which is wrong!

---
4. $u \times v = v \times u$
**False.** 
	($u \times v = - v \times u$ instead)
	$(1,0,0) \times (0,1,0) = (0,0,1) \neq (0,0,-1) = (0,1,0) \times (1,0,0)$
	(i.e., $i \times j = k \neq -k = j \times i$)

---
5. $u$, $v$ are unit vectors, so is $u \times v$
**False.**
	$\hat{i} \times \hat{i} = \vec{0}$ and $\vec{0}$ is NOT a unit vector 

---
6. $(u \times v) \cdot u = (u \times v) \cdot v = 0$
**True.**
	Since by definition, $u \times v$ is perpendicular to both $u$ and $v$, it's dot product with either vector would be $0$ since they completely misalign (more formally, $\theta = \frac{\pi}{2}$)

---
7. $|u+v|=|u|+|v|$
**False.**
	A very simple Pythagorean theorem example!
	$|3 \hat{i} + 4 \hat{j}| = 5 \neq 3+4$

---
8. $(u \times v) \times w = u \times (v \times w)$
**False.**
	$(j \times j) \times i = \vec{0}$
	But $j \times (j \times i) = j \times -k = -i$

---
9. $(u + v) \times (u-v)=2(v \times u)$
**True.**
	$LHS = (u \times u) - (u \times v) + (v \times u) - (v \times v)$
	$= (v \times u) + (v \times u)$ (since $u \times v = - v \times u$ )
	$= 2(v \times u)$

---
10. $(u + v) \cdot (u -v) = |u|^{2}-|v|^{2}$
**True.**
$LHS = u \cdot u - u \cdot v + v \cdot u - v \cdot v$
$= |u|^{2} - |v|^{2}$

---
