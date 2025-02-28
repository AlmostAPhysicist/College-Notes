# Challenges with Euler Angles
Here, I simulated interpolation of direction cosines as opposed to true "natural" path between 2 vectors.
![[attachments/Drawing 25-02-25-05-50-48.png|1000]]

---
Since $l^{2}+m^{2}+n^{2}=1$ for any unit vector $\hat{v}$, 
where $l = \hat{v} \cdot \hat{i}$, $m = \hat{v} \cdot \hat{j}$ and $n = \hat{v} \cdot \hat{k}$,

Your $x,y,z$ values are always constraint. So you can not freely change your angles made with $x$, $y$ and $z$ axes while maintaining your magnitude.  The _linear interpolation_ of these angles (or their cosines) doesn’t inherently respect the spherical constraint

Hence, whenever the rates of change in angles with respect to each axis are different (which happens whenever $\Delta \theta_{x} \neq \Delta \theta_{y} \neq \Delta \theta_{z}$ (which is most cases), the path traversed is not along the spherical manifold - the path deviates from the sphere _before normalization_ and, post-normalization, isn’t a geodesic)

If you linearly interpolate Euler angles or direction cosines and then normalize the resulting vector the path on the sphere becomes non-linear in terms of angular progression—it’s not a uniform great circle arc.

This is why Interpolation with Angles Made with Axes (or Euler Angles for that matter since they have the same issue) is almost always not spherical and perfect.

- Linear Interpolation would not give us a natural path. 
- Both Interpolation of Direction Cosines and Euler angles suffer from this issue.
- In Addition to this, Euler Angles can be stuck in "Gimbal Locks".
(Note: The non-spherical issue persists because linear interpolation mismatches the sphere’s curvature, not just due to singularities.)

# Ways to Fix the issue
The only way Euler angles can work (Which way have to get them to work since our degrees of freedom in the wings are just Euler Angle rotations) is by using some other frame of rotations to calculate your rotation:
- Small angle increments improve approximation but don’t inherently yield a geodesic unless guided by spherical geometry.
Note:
Euler Angles themselves are non-commutative. So they are not easily composable. Hence, their small composite additions actually are unstable, and in fact would give terrible results on their own.

But if we adjust Euler Angle rotations in our flapping wing gimbals by a true spherical path (Such as by using Quaternion SLERP —  the most elegant way to get the path), we can get around the problem.) Or by Angle-Axis (which in fact is equivalent and in some sense itself uses Quaternion SLERP), then we can actually follow a more "natural" path - the geodesic of the sphere.

### Lie Algebra Terms and Manifolds
![[attachments/Drawing 25-02-25-05-09-33.png|700]]

The image is self explanatory. A SLERP (Spherical Linear Interpolation) using Quaternions allows you to easily trace a path along the geodesic of the hypersphere surface that encapsulates the unit quaternions describing 2 rotational states.

Euler Angles would instead take a path that is off the sphere. Renormalizing it would take a non-linear path.

Quaternions are closely related to Lie algebra because ==the set of unit quaternions (quaternions with magnitude 1) forms a Lie group==, and the corresponding Lie algebra is essentially the space of "infinitesimal rotations" which can be used to represent rotations in 3D space; in simpler terms, the derivative of a quaternion rotation at the identity element is a vector that lies in the Lie algebra associated with the group of unit quaternions. 

This is where the Lie algebra and staying on the manifold came in - it's not that complicated.

---

So the way to calculate your actual Euler Angle Rotations, you need to consider small movements along the path described by SLERP (as if you are fitting your movement to the path, not defining the path by your movement).

# The Methodology
# SLERP to Euler Angles for $v_1$ to $v_2$

Trace a geodesic path from $v_1$ to $v_2$ using quaternion SLERP, then fit Euler angles.

---

## Step 1: Total Quaternion
- $\hat{v}_1 = v_1 / |v_1|$, $\hat{v}_2 = v_2 / |v_2|$.
- $\hat{\mathbf{a}} = (\hat{v}_1 \times \hat{v}_2) / |\hat{v}_1 \times \hat{v}_2|$.
- $\theta = \arccos(\hat{v}_1 \cdot \hat{v}_2)$.
- $q_{\text{total}} = \cos(\theta/2) + \sin(\theta/2) \hat{\mathbf{a}}$.

---

## Step 2: SLERP
- $\Omega = \cos^{-1}(w)$ ($w$ from $q_{\text{total}}$).
- $q(t) = \frac{\sin((1-t)\Omega)}{\sin(\Omega)} (1, 0, 0, 0) + \frac{\sin(t \Omega)}{\sin(\Omega)} q_{\text{total}}$, $t = 0, \frac{1}{n}, \ldots, 1$.

---

## Step 3: Euler Angles (ZYX) - This is just 1 method of conversion 
For each $q(t)$:
- $R(t) = \begin{bmatrix} 1 - 2(y^2 + z^2) & 2(xy - wz) & 2(xz + wy) \\ 2(xy + wz) & 1 - 2(x^2 + z^2) & 2(yz - wx) \\ 2(xz - wy) & 2(yz + wx) & 1 - 2(x^2 + y^2) \end{bmatrix}$.
- $\theta(t) = \arcsin(-r_{31})$, $\psi(t) = \arctan2(r_{21}, r_{11})$, $\phi(t) = \arctan2(r_{32}, r_{33})$.
(This is not really using a Rotation Matrix - it is just a simple means of conversion)
---

## Step 4: Apply Increments
- For $t_i = i/n$:
  - $\Delta \phi = \phi(t_i) - \phi(t_{i-1})$, etc.
  - Adjust gimbals by $\Delta \phi$, $\Delta \theta$, $\Delta \psi$.

**Result**: Smooth path approximating the geodesic.

---
There are also other ways to calculate the interpolation of quaternions to have a greater control:

![[2025_02_25 5_27 am Office Lens (1).jpg]]![[2025_02_25 5_27 am Office Lens (2).jpg]]

### 1. Quaternion $q$ Applied Iteratively $n$ Times
You want a quaternion $q$ such that applying it $n$ times to $v_1$ gets you to $v_2$:

$$ v_1 \xrightarrow{q} v_1' \xrightarrow{q} v_1'' \ldots \xrightarrow{q} v_2 \text{ (after } n \text{ applications)} $$

The total rotation is $\theta$ around $\mathbf{a}$. Assuming $\mathbf{a}$ is a unit vector (if not, we’d normalize it), the full rotation quaternion is:

$$ Q = \cos\left(\frac{\theta}{2}\right) + \sin\left(\frac{\theta}{2}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

Applying $Q$ once rotates $v_1$ to $v_2$:

$$ v_2 = Q v_1 Q^{-1} $$ (where $v_1$ is a pure quaternion $(0, v_{1x}, v_{1y}, v_{1z})$).

For $n$ steps, each step should rotate by:

$$ \Delta \theta = \frac{\theta}{n} $$

So, the per-step quaternion is:

$$ q = \cos\left(\frac{\Delta \theta}{2}\right) + \sin\left(\frac{\Delta \theta}{2}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

$$ q = \cos\left(\frac{\theta}{2n}\right) + \sin\left(\frac{\theta}{2n}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

- Apply $q$ to $v_1$: $$ v_1' = q v_1 q^{-1} $$
- Apply again: $$ v_1'' = q v_1' q^{-1} = q^2 v_1 (q^{-1})^2 $$
- After $n$ times: $$ v_2 = q^n v_1 (q^{-1})^n $$

Since $q$ is a unit quaternion, $q^n = \cos\left(\frac{n \theta}{2n}\right) + \sin\left(\frac{n \theta}{2n}\right) \mathbf{a} = \cos\left(\frac{\theta}{2}\right) + \sin\left(\frac{\theta}{2}\right) \mathbf{a} = Q$, which confirms it works.

**Answer 1:**

$$ q = \cos\left(\frac{\theta}{2n}\right) + \sin\left(\frac{\theta}{2n}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

---

### 2. Quaternion $q$ Such That $q dt$ Applied Iteratively $n$ Times
Now you want a quaternion $q$ where $q$ times $dt$ (interpreted as $e^{q \cdot dt}$) applied $n$ times gets you from $v_1$ to $v_2$. This implies $q$ is a rate quaternion, and $dt = \frac{\Delta t}{n}$ is the time step over a total time $\Delta t$.

Total rotation angle $\theta$ over $\Delta t$ suggests an angular velocity:

$$ \omega = \frac{\theta}{\Delta t} $$

The rate quaternion is:

$$ q = \frac{1}{2} \omega \hat{\mathbf{a}} = \frac{1}{2} \frac{\theta}{\Delta t} (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

Per step, $dt = \frac{\Delta t}{n}$, so the small rotation is:

$$ q_{\text{step}} = e^{q \cdot dt} $$

$$ q \cdot dt = \frac{1}{2} \frac{\theta}{\Delta t} \cdot \frac{\Delta t}{n} (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) = \frac{\theta}{2n} (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

$$ q_{\text{step}} = e^{q \cdot dt} = \cos\left(\frac{\theta}{2n}\right) + \sin\left(\frac{\theta}{2n}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

- Apply: $$ v_1' = q_{\text{step}} v_1 q_{\text{step}}^{-1} $$
- After $n$ times: $$ q_{\text{step}}^n = e^{n \cdot q \cdot dt} = e^{q \cdot \Delta t} = \cos\left(\frac{\theta}{2}\right) + \sin\left(\frac{\theta}{2}\right) \mathbf{a} = Q $$

This matches the total rotation, so:

**Answer 2:**

$$ q = \frac{1}{2} \frac{\theta}{\Delta t} (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

Apply $q_{\text{step}} = e^{q \cdot dt}$ where $dt = \frac{\Delta t}{n}$, $n$ times.

---

### 3. Quaternion from Angular Velocity $\omega$ Over Time $dt$
Given an angular velocity $\omega = \omega \hat{\mathbf{a}}$ (where $\omega$ is the magnitude, $\hat{\mathbf{a}}$ the unit axis), you want the rotation quaternion over time $dt$ to apply to $v_1$:

$$ v_1' = \text{apply!(q(omega), dt, v1)} $$

Angular velocity $\omega$ means the angle rotated in time $dt$ is:

$$ \phi = \omega dt $$

The rotation quaternion is:

$$ q(\omega, dt) = \cos\left(\frac{\phi}{2}\right) + \sin\left(\frac{\phi}{2}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

$$ q(\omega, dt) = \cos\left(\frac{\omega dt}{2}\right) + \sin\left(\frac{\omega dt}{2}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

Or, using the rate form:

$$ q_{\text{rate}} = \frac{1}{2} \omega (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

$$ q(\omega, dt) = e^{q_{\text{rate}} \cdot dt} = \cos\left(\frac{\omega dt}{2}\right) + \sin\left(\frac{\omega dt}{2}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

Apply:

$$ v_1' = q(\omega, dt) v_1 q(\omega, dt)^{-1} $$

**Answer 3:**

$$ q(\omega, dt) = \cos\left(\frac{\omega dt}{2}\right) + \sin\left(\frac{\omega dt}{2}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

Where $\omega$ is the angular speed, and $\hat{\mathbf{a}} = (a_x, a_y, a_z)$ is the unit axis.

---

### Summary
1. $$ q = \cos\left(\frac{\theta}{2n}\right) + \sin\left(\frac{\theta}{2n}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$, apply $n$ times.
2. $$ q = \frac{1}{2} \frac{\theta}{\Delta t} (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$, apply $e^{q \cdot dt}$ with $dt = \frac{\Delta t}{n}$, $n$ times.
3. $$ q(\omega, dt) = \cos\left(\frac{\omega dt}{2}\right) + \sin\left(\frac{\omega dt}{2}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$, apply once for time $dt$ (then repeat as many times you want the $d\theta$ rotation).

---
# References
Other Useful Resources On doing Math and Physics (Including Integrals and working with Angular Velocity):
https://ahrs.readthedocs.io/en/latest/filters/angular.html
https://www.ashwinnarayan.com/post/how-to-integrate-quaternions/
https://math.stackexchange.com/questions/912353/quaternion-integration
https://ancs.eng.buffalo.edu/pdf/ancs_papers/2012/geom_int.pdf
https://www.euclideanspace.com/physics/kinematics/angularvelocity/

https://youtu.be/d4EgbgTm0Bg?si=F8kX7lDiPtFi5bnP (really helpful to grasp the idea of quaternions)