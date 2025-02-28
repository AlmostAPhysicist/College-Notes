# Quaternion Basics: Definitions and Properties

These notes cover the essentials of quaternions and their role in rotations, tailored to clarify the concepts in your rotation problem.

---

## 1. What is a Quaternion?
A quaternion is a 4D number used to represent rotations in 3D space. It extends complex numbers and is written as:

$$ q = w + x \mathbf{i} + y \mathbf{j} + z \mathbf{k} $$

- $w$: Scalar (real) part.
- $x \mathbf{i} + y \mathbf{j} + z \mathbf{k}$: Vector (imaginary) part, where $\mathbf{i}, \mathbf{j}, \mathbf{k}$ are basis units.
- Often denoted as $q = (w, \mathbf{v})$, where $\mathbf{v} = (x, y, z)$ is a 3D vector.

### Examples
- Pure quaternion (vector): $0 + x \mathbf{i} + y \mathbf{j} + z \mathbf{k} = (0, \mathbf{v})$.
- Unit quaternion (for rotations): Magnitude $|q| = 1$.

---

## 2. Basic Operations
### Addition
Add component-wise:

$$ q_1 + q_2 = (w_1 + w_2) + (x_1 + x_2) \mathbf{i} + (y_1 + y_2) \mathbf{j} + (z_1 + z_2) \mathbf{k} $$

### Multiplication
Quaternion multiplication is non-commutative (order matters). For $q = w + x \mathbf{i} + y \mathbf{j} + z \mathbf{k}$ and $p = a + b \mathbf{i} + c \mathbf{j} + d \mathbf{k}$:

- Scalar part: $w a - x b - y c - z d$
- Vector part: Uses dot and cross products of $\mathbf{v} = (x, y, z)$ and $\mathbf{u} = (b, c, d)$:

$$ q p = (w a - \mathbf{v} \cdot \mathbf{u}) + (w \mathbf{u} + a \mathbf{v} + \mathbf{v} \times \mathbf{u}) $$

#### Rules for $\mathbf{i}, \mathbf{j}, \mathbf{k}$
$$ \mathbf{i}^2 = \mathbf{j}^2 = \mathbf{k}^2 = -1 $$
$$ \mathbf{i} \mathbf{j} = \mathbf{k}, \quad \mathbf{j} \mathbf{k} = \mathbf{i}, \quad \mathbf{k} \mathbf{i} = \mathbf{j} $$
$$ \mathbf{j} \mathbf{i} = -\mathbf{k}, \quad \mathbf{k} \mathbf{j} = -\mathbf{i}, \quad \mathbf{i} \mathbf{k} = -\mathbf{j} $$

### Conjugate
$$ q^* = w - x \mathbf{i} - y \mathbf{j} - z \mathbf{k} $$

### Magnitude
$$ |q| = \sqrt{w^2 + x^2 + y^2 + z^2} $$

### Inverse (for $|q| \neq 0$)
$$ q^{-1} = \frac{q^*}{|q|^2} $$
For unit quaternions ($|q| = 1$): $q^{-1} = q^*$.

---

## 3. Quaternions and Vectors
A 3D vector $\mathbf{v} = (v_x, v_y, v_z)$ is represented as a pure quaternion:

$$ V = 0 + v_x \mathbf{i} + v_y \mathbf{j} + v_z \mathbf{k} $$

### Rotation by Quaternion
A unit quaternion $q = \cos\left(\frac{\theta}{2}\right) + \sin\left(\frac{\theta}{2}\right) \hat{\mathbf{a}}$ (where $\hat{\mathbf{a}}$ is a unit axis) rotates a vector $V$ via:

$$ V' = q V q^{-1} $$

- $V'$ is the rotated vector (still pure).
- $\theta$ is the rotation angle, $\hat{\mathbf{a}} = (a_x, a_y, a_z)$ the axis.
- Why $\frac{\theta}{2}$? Quaternions use half-angles due to their double-cover of rotations.

---

## 4. Quaternions and Numbers
- Scalars (real numbers) are quaternions with zero vector part: $s = (s, 0)$.
- Multiplication by a scalar $s$ scales all components:

$$ s q = (s w, s x, s y, s z) $$

---

## 5. Quaternions and Angular Velocity ($\omega$)
Angular velocity $\omega$ (a scalar magnitude) along an axis $\hat{\mathbf{a}}$ relates to rotations over time.

### Rate Quaternion
The "rate" of rotation is:

$$ q_{\text{rate}} = \frac{1}{2} \omega (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

- Pure quaternion (no scalar part).
- Represents instantaneous rotation velocity.

### Rotation Over Time
For a small time $dt$, the rotation quaternion is:

$$ q(\omega, dt) = e^{q_{\text{rate}} \cdot dt} = \cos\left(\frac{\omega dt}{2}\right) + \sin\left(\frac{\omega dt}{2}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$

- $\omega dt = \phi$, the angle rotated in time $dt$.
- Exponential form comes from the quaternion exponential: $e^{t \mathbf{u}} = \cos(t) + \sin(t) \mathbf{u}$ for a unit pure quaternion $\mathbf{u}$.

---

## 6. Key Properties
- **Unit Quaternions**: $|q| = 1$, used for rotations. Their inverse is their conjugate.
- **Composition**: Applying $q_1$ then $q_2$ is $q_2 q_1$ (multiply in reverse order).
- **Interpolation**: Raising $q$ to a power $t$ (e.g., $q^t$) interpolates rotations:

$$ q^t = \cos\left(t \frac{\theta}{2}\right) + \sin\left(t \frac{\theta}{2}\right) \hat{\mathbf{a}} $$

---

## 7. Connection to Your Problem
- **Case 1**: $q = \cos\left(\frac{\theta}{2n}\right) + \sin\left(\frac{\theta}{2n}\right) \hat{\mathbf{a}}$ splits total angle $\theta$ into $n$ steps. $q^n = Q$ gives the full rotation.
- **Case 2**: $q = \frac{1}{2} \frac{\theta}{\Delta t} \hat{\mathbf{a}}$ is a rate quaternion. $e^{q \cdot dt}$ with $dt = \frac{\Delta t}{n}$ approximates small rotations.
- **Case 3**: $q(\omega, dt)$ directly uses $\omega$ to compute the rotation over $dt$.

---
# Understanding $e^q$: Quaternion Exponential

The exponential $e^q$ for a quaternion $q$ generalizes $e^x$ to 4D. It’s key in your rotation steps.

---

## Definition
For $q = w + x \mathbf{i} + y \mathbf{j} + z \mathbf{k} = (w, \mathbf{v})$:

$$ e^q = e^{w + \mathbf{v}} = e^w e^\mathbf{v} $$

- $w$: Scalar part, $e^w$ is real.
- $\mathbf{v} = (x, y, z)$: Vector part.

Vector exponential ($|\mathbf{v}| = \sqrt{x^2 + y^2 + z^2}$, $\hat{\mathbf{v}} = \frac{\mathbf{v}}{|\mathbf{v}|}$):

$$ e^\mathbf{v} = \cos(|\mathbf{v}|) + \sin(|\mathbf{v}|) \hat{\mathbf{v}} $$

Full form:

$$ e^q = e^w \left( \cos(|\mathbf{v}|) + \sin(|\mathbf{v}|) \hat{\mathbf{v}} \right) $$

---

## Rotation Case
For $q = \frac{\theta}{2} (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k})$ ($w = 0$, $\hat{\mathbf{a}}$ unit vector):

$$ e^q = \cos\left(\frac{\theta}{2}\right) + \sin\left(\frac{\theta}{2}\right) \hat{\mathbf{a}} $$

This rotates a vector by $\theta$ around $\hat{\mathbf{a}}$ when applied as $V' = e^q V (e^q)^{-1}$.

---

## Angular Velocity Case
If $q = \frac{1}{2} \omega \hat{\mathbf{a}} \cdot dt$:

$$ e^q = \cos\left(\frac{\omega dt}{2}\right) + \sin\left(\frac{\omega dt}{2}\right) \hat{\mathbf{a}} $$

Rotates by $\phi = \omega dt$ over time $dt$.

---

## Link to Your Problem
- Case 2: $e^{q \cdot dt}$ with $q = \frac{1}{2} \frac{\theta}{\Delta t} \hat{\mathbf{a}}$ gives per-step rotation.
- Case 3: $e^{q_{\text{rate}} \cdot dt}$ matches $q(\omega, dt)$.

Think of $e^q$ as "unwinding" a rate or angle into a rotation!

---
# Solving the Interpolation Problem
These basics should ground the math in your original text. Quaternions shine for smooth, stable 3D rotations—perfect for your $v_1$ to $v_2$ transition!
Let’s dive into this with a clear head and address your three desired quantities step-by-step. You’re moving from vector $v_1$ to $v_2$ by a rotation of angle $\theta$ around axis $\mathbf{a}$, divided into $n$ steps (you mentioned 10 times in the example, so I’ll assume $n = 10$ unless specified otherwise). We’ll define each quaternion naturally and ensure they meet your goals.

---

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
3. $$ q(\omega, dt) = \cos\left(\frac{\omega dt}{2}\right) + \sin\left(\frac{\omega dt}{2}\right) (a_x \mathbf{i} + a_y \mathbf{j} + a_z \mathbf{k}) $$, apply once for time $dt$.


---
# Quaternion vs. Euler Interpolation

Is quaternion interpolation always better than Euler angles? Let’s explore, especially for large angles.

---

## Euler Angles Interpolation
Linearly interpolate $(y_1, p_1, r_1)$ to $(y_2, p_2, r_2)$:
- $y(t) = y_1 + t (y_2 - y_1)$, etc., $t \in [0, 1]$.

### Issues for Large Angles
- **Non-Shortest Path**: Independent angle changes miss the true rotation path.
- **Gimbal Lock**: Near $p = 90^\circ$, axes align, breaking smoothness.
- **Inconsistent Motion**: Uneven angular speed.

**Result**: Inaccurate, jerky motion for big jumps (e.g., $0^\circ \to 180^\circ$).

---

## Quaternion Interpolation
Convert to quaternions $q_1$ and $q_2$, use SLERP:
$$ q(t) = \frac{\sin((1-t)\Omega)}{\sin(\Omega)} q_1 + \frac{\sin(t \Omega)}{\sin(\Omega)} q_2 $$
- $\Omega = \cos^{-1}(q_1 \cdot q_2)$.

### Benefits
- **Shortest Path**: Follows the geodesic in quaternion space.
- **No Gimbal Lock**: Always smooth.
- **Even Speed**: Consistent 3D rotation.

**Fixes Large Angles**: Yes—accurate and natural motion.

---

## Always Better?
- **Small Angles**: Euler is simpler, errors small (e.g., < $10^\circ$).
- **Large Angles**: Quaternions excel—use for big $\theta$.
- **Cost**: More math, conversions if Euler output needed.

**Verdict**: Quaternions solve inaccuracy for large deviations, but Euler’s fine for tiny steps or simplicity.

---

# Quaternion to Global X, Y, Z Rotations

Given $v' = q v q^{-1}$, find Euler angles for global X, Y, Z axes (ZYX order).

---

## Quaternion to Rotation Matrix
For $q = w + x \mathbf{i} + y \mathbf{j} + z \mathbf{k}$:

$$
R = \begin{bmatrix}
1 - 2(y^2 + z^2) & 2(xy - wz) & 2(xz + wy) \\
2(xy + wz) & 1 - 2(x^2 + z^2) & 2(yz - wx) \\
2(xz - wy) & 2(yz + wx) & 1 - 2(x^2 + y^2)
\end{bmatrix}
$$

---

## Euler Angles (ZYX Order)
- **Pitch** ($\theta_y$): $$ \theta_y = \arcsin(-r_{31}) $$
- **Yaw** ($\theta_z$) and **Roll** ($\theta_x$):
  - If $\theta_y \neq \pm 90^\circ$:
    $$ \theta_z = \arctan2(r_{21}, r_{11}) $$
    $$ \theta_x = \arctan2(r_{32}, r_{33}) $$
  - If $\theta_y = 90^\circ$:
    $$ \theta_z = 0, \quad \theta_x = \arctan2(-r_{12}, r_{22}) $$
  - If $\theta_y = -90^\circ$:
    $$ \theta_z = 0, \quad \theta_x = \arctan2(r_{12}, r_{22}) $$

---

## Process
1. Compute $R$ from $q$.
2. Extract $\theta_y, \theta_z, \theta_x$.
3. Apply: Yaw ($\theta_z$ around Z), Pitch ($\theta_y$ around Y), Roll ($\theta_x$ around X).

**Note**: ZYX means global axes—order is Z, then Y, then X.

---

## Example
$q = \cos(22.5^\circ) + \sin(22.5^\circ) \mathbf{j}$ (45° around Y):
- $R = \begin{bmatrix} 0.7071 & 0 & 0.7071 \\ 0 & 1 & 0 \\ -0.7071 & 0 & 0.7071 \end{bmatrix}$.
- $\theta_y = 45^\circ$, $\theta_z = 0^\circ$, $\theta_x = 0^\circ$.


---
# Quaternion to Intrinsic XYZ (Local Axes)

Given $v' = q v q^{-1}$, find Euler angles for intrinsic XYZ (local X, Y, Z).

---

## Rotation Matrix
For $q = w + x \mathbf{i} + y \mathbf{j} + z \mathbf{k}$:

$$
R = \begin{bmatrix}
1 - 2(y^2 + z^2) & 2(xy - wz) & 2(xz + wy) \\
2(xy + wz) & 1 - 2(x^2 + z^2) & 2(yz - wx) \\
2(xz - wy) & 2(yz + wx) & 1 - 2(x^2 + y^2)
\end{bmatrix}
$$

---

## Intrinsic XYZ Angles
- Roll ($\phi$) around local X, Pitch ($\theta$) around new Y, Yaw ($\psi$) around new Z.
- **Pitch**: $$ \theta = \arcsin(-r_{13}) $$
- **Roll** and **Yaw**:
  - If $\theta \neq \pm 90^\circ$:
    $$ \phi = \arctan2(r_{23}, r_{33}) $$
    $$ \psi = \arctan2(r_{12}, r_{11}) $$
  - If $\theta = 90^\circ$:
    $$ \psi = 0, \quad \phi = \arctan2(-r_{21}, r_{22}) $$
  - If $\theta = -90^\circ$:
    $$ \psi = 0, \quad \phi = \arctan2(r_{21}, r_{22}) $$

---

## X and Z “Flip”?
- Intrinsic XYZ: X (roll) first, Z (yaw) last, local axes.
- Extrinsic ZYX: Z (yaw) first, X (roll) last, global axes.
- Order reverses, not axes themselves—same $R$, different angle roles.

---

## Example
$q = \cos(22.5^\circ) + \sin(22.5^\circ) \mathbf{j}$:
- $R = \begin{bmatrix} 0.7071 & 0 & 0.7071 \\ 0 & 1 & 0 \\ -0.7071 & 0 & 0.7071 \end{bmatrix}$.
- $\theta = -45^\circ$, $\phi = 0^\circ$, $\psi = 0^\circ$ (local Y pitch).


>Any extrinsic rotation is equivalent to an intrinsic rotation by the same angles but with inverted order of elemental rotations, and vice-versa. 
>http://en.wikipedia.org/wiki/Euler_angles#Conversion_between_intrinsic_and_extrinsic_rotations
>https://math.stackexchange.com/questions/1137745/proof-of-the-extrinsic-to-intrinsic-rotation-transform



