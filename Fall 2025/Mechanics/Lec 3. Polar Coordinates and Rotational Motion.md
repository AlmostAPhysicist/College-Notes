We have been emphasizing on the idea that as long as you have an inertial reference frame, the coordinate system does not matter.

Yes, that is true, but often it is convenient to use one coordinate or the other.
The general idea being that using coordinate systems that have similar symmetries as the problem in hand, help us better use the symmetries which often leads to some nice advantage.

We would therefore look at a different coordinate axis today.

## 2D Polar Coordinates 
![[Mechanics/attachments/Drawing 25-09-09-10-29-13|100%]]

### Unit Vectors for 2D Polar Coordinates 
Usually, so far, you define any vector $\vec{v} = v_{x}\hat{x} + v_{y}\hat{y}$. And $\hat{x}$, $\hat{y}$ are FIXED in place regardless of the choice of $\vec{v}$.

It is slightly different for Polar Coordinates.

![[Mechanics/attachments/Drawing 25-09-09-10-33-39|100%]]

Since $\hat{r}$ and $\hat{\theta}$ are dependent on the points in consideration.

So we have to be careful when taking derivatives.
$\frac{d}{dt}(\hat{r}) = \dot{r}\hat{r} + r\dot{\hat{r}}$
(actually we do this for Cartesian coordinates too but $\dot{\hat{x}} = \dot{\hat{y}} = 0$, so the 2nd term is usually zero, thus we get only $\dot{\vec{v_{x}}} = \dot{v_{x}} \hat{x}$)

![[Mechanics/attachments/Drawing 25-09-09-10-40-51|100%]]

---
### Sample Problems Using the Derived Expression For Acceleration in Polar Coordinates 

![[Mechanics/attachments/Drawing 25-09-09-11-20-01|100%]]


---

A brief note on $\hat{r}$ and $\hat{\phi}$, in 2D, you usually need $2$ Dimensions to define point.

But $\vec{r} = r \hat{r}$. Only 1 component?
Well, we align $\hat{r}$ to BE aligned with our position (sort of like picking $\hat{x}$ in the direction of the point, from a $(0,0)$ point.)

But more importantly, the point is $\hat{r}$ is a FUNCTION of $\hat{\phi}$!!!
With different $\hat{\phi}$, your $\hat{r}$ changes!