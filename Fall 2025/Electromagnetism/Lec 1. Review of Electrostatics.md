## Electrostatics
$$\vec{F} = \frac{1}{4\pi\epsilon_{0}} \frac{q_{1}q_{2}}{r^{2}} \hat{r}$$ (experimental result)
![[Electromagnetism/attachments/Drawing 25-09-02-04-00-02]]

- $\epsilon$ is the electric permittivity

It turns out, phenomenologically, that given another charge $q_{3}$, then the forces between any two pairs, including our previously calculated $F_{12}$ has no effect on it from the other particle.

This is the **Superposition Principle**.

Meaning, for a bunch of $n$ charges,
$\displaystyle \vec{F}_{1} = \frac{1}{4\pi\epsilon_{0}} q_{1} \sum^{N}_{2} (\frac{q_{i}}{|\vec{r_{1}} - \vec{r_{i}^{3}|}}(\vec{r_{1}} - \vec{r_{i}}))$
$\displaystyle =q_{1} \cdot \vec{E}(\vec{r_{1}})$, where $\vec{E}(r_{1}) = \sum^{N}_{2} (\frac{q_{i}}{|\vec{r_{1}} - \vec{r_{i}^{3}|}}(\vec{r_{1}} - \vec{r_{i}}))$ is a vector field (i.e. every point in space has a corresponding vector attached to it)
	A vector, again, looking back at what we did in [[Mechanics/Lec 1. Introduction to Newton's Laws|Lec 1. Introduction to Newton's Laws]] today, a vector, in physics at least, is not just a quality represented by certain entries given by 1 number defining an index (a rank 2 tensor, or a magnitude and a direction), ALSO, IT NEEDS TO BE THE SAME PHYSICAL OBJECT THAT CAN BE REPRESENTATIONALLY TRANSFORMABLE ACROSS DIFFERENT COORDINATE SYSTEMS. With these transformations, such as $\begin{bmatrix}x \\ y\end{bmatrix} \rightarrow \begin{bmatrix}x cos(\alpha) + y sin(\alpha) \\ ycos(\alpha) - x sin(\alpha)\end{bmatrix}$, you can see that this rotation transformation still maintains the magnitude $|\vec{v}| = x^{2}+y^{2}$ to be the same (you can compute and verify)
		You can also define other vector operations such as the dot product… $\vec{a} \cdot \vec{b} = a_{x}b_{x} + a_{y}b_{y} + a_{z}b_{z}$ 
			$\vec{a} + \vec{b} = \vec{c}$
			$\vec{c}x = \vec{a}x + \vec{b}x$
			(I love this), $\vec{a} \cdot \vec{a} = a_{x}^{2} + a_{y}^{2} + a_{z}^{2}$ defines our Pythagorean theorem.
			Now, a nice note is that this is was thought after looking at the "standard" idea of a space, but it turns out this is instead an axiom, and you can have different systems with different axioms, yet consistent, producing different kinds of spaces. This cartesian space however, is a nice approximation, as we realize for our universe for most places, and is easy to work with.
			$\vec{a} \times \vec{b} = \begin{vmatrix}\hat{x} & \hat{y} & \hat{z} \\ a_{x} & a_{y} & a_{z} \\ b_{x} & b_{y} & b_{z}\end{vmatrix}$ This is a vector product.
				There are however, move nuances with this. This is not the only thing that defines a vector. You can mistake such things for pseudovectors. Remember again, the coordinate transformation property must also be satisfied.
					A simple example would be simply inverting all coordinates by negating them, you would see that the general solution does not stay the same.

So, right now, the field $\vec{E}$ seems like a mathematical construction that tries to simplify things with us.

But really, 
>WHAT IS THE FIELD, and HOW IS THIS FORCE BEING APPLIED AT A DISTANCE?

---

### Representation of a field 
![[Electromagnetism/attachments/Drawing 25-09-02-04-41-16]]
Populating a grid with vectors is one way, but it's messy. A more convenient way is **Field Lines**.
The field lines are populated with certain rules (and really under the hood, these rules correspond geometrically to implications of some of Maxwell's laws).

Now the line really is define by what direction is the electric field pointing to at a point, and you nudge it slightly in that direction.
Note: the line only knows the field direction, NOT the magnitude.

Another rule would be that the lines do not start and end at arbitrary points. They either loop, or start and end at charges.

![[Electromagnetism/attachments/Drawing 25-09-02-04-45-18]]
The denser the lines, the more strong the fields are. The granularity is arbitrary, but once you stick to one, the proportionality has to be maintained to the relative density of the fields under concern. You can actually see geometrically that the change of density for a sphere would be inverse squared.

(you could try working out the mathematics for higher or lower dimensions and argue stable orbits or what not about 3 dimensions and use the anthropic argument but at the end of the day, you can do all wierd things in any dimension.)

>What's slightly more interesting than a point charge? Two Point charges. 
> \- Yuri Gerstein

![[Electromagnetism/attachments/Drawing 25-09-02-04-57-12|100%]]
Therefore, we define $\vec{p} = q \vec{l}$ (where $\vec{l}$ is the length of distance between the charges, with negative to positive charge positions as the direction.)

![[Electromagnetism/attachments/Drawing 25-09-02-05-09-22]]




