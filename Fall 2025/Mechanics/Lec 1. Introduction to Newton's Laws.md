## Newton's Laws of Motion
### Notation
- Space
  We would be using some kind of coordinate system, usually the Cartesian coordinate. ![[Mechanics/attachments/Drawing 25-09-02-05-27-44]]
  And of course, you know the basic vector operations... 
	- $\vec{r} + \vec{s}$ is the same as adding their individual components in any basis 
	- $c \vec{r}$ is the same as scaling each component of $\vec{r}$ by the constant $c$
	- **Dot Product**: $\vec{r} \cdot \vec{s}$ is the sum of products of individual components of the two vectors in an orthonormal basis.
	  ![[Mechanics/attachments/Drawing 25-09-02-05-46-41]]
		- Gives a **Scalar outcome**
			- A scalar, if you really think about it, is something defined by a single number AND it should NOT change with a change in the coordinate system (the physical object, the simplest one actually, does not change, although your description and representation of the same object can change in your framework)
			- *The key idea here, would be that things like scalars, vectors, dot products, the cosines of the angle, all these things DO NOT CARE ABOUT YOUR CHOICE OF COORDINATES. YOU DON'T EXIST FOR SUCH OBJECTS*
				- interestingly, speed is not a scalar since it changes with the coordinate system you define (can be moving in one and not in the other)?
	- **Vector Product**: $\vec{r} \times \vec{s}$
	  ![[Mechanics/attachments/Drawing 25-09-02-05-47-47]]
	- Differentiation of Vectors
		- $\frac{dx}{dt} = \lim_{\Delta t \to 0} \frac{\Delta x}{\Delta t}$ and this $x$ here can be replaced by a vector $\vec{r}$. 
		- $\implies \Delta \vec{r} = \vec{r}(t + \Delta t) - \vec{r}(t)$
			- $\frac{d}{dt}(\vec{r} + \vec{s}) = \frac{d}{dt}(\vec{r}) + \frac{d}{dt}(\vec{s})$ (so simply differentiate the components of a vector to find it's derivative)
			- (so it's a linear function)
			- $\frac{d}{dt}(f(t)\vec{r}) = \vec{f} \frac{d\vec{r}}{dt} + \frac{df}{dt}\vec{r}$
			- $\vec{v} = \frac{d\vec{r}}{dt} = \frac{dx}{dt}\hat{x} + \frac{dy}{dt}\hat{y} + \frac{dz}{dt}\hat{z}$

### Now, back to Newton's Laws 
1. The premise of Newton's first law (**object in a state of motion stays as so unless acted by an external force**), is a postulate of the EXISTENCE of inertial frames of reference: reference frames that have this law holding true. So we agree from now on, for the case of Newtons laws (at least for now), that these laws hold for **initial reference frames**.
2. There exists some mathematical quantity **Force** such that $\vec{F} = m\vec{a}$. Where $m$ is a quantity mass that is an intrinsic property of all matter, that physically translates to a resistance to the change of the state of motion. $\vec{a}$ is $\frac{d^{2}\vec{r}}{dt^{2}} = \ddot{\vec{r}}$
    - Defining a certain vector, similarly, $\vec{p} = m\vec{v}$, $\implies \dot{\vec{p}} = m \dot{\vec{v}} = m\vec{a} = \vec{F}$ (assuming mass is a constant scalar, so it doesn't change with time and our choice of coordinates) $\implies \vec{F} = \dot{\vec{p}}$
    - In general, in this class, we would take **differential equations** like these, where you would be given some information about the system, and would be finding how a system evolves as a function of time, hence finding quantities like $\vec{r}(t)$.
	    - **As an example of how you deal with such differential equations**:
		    - 1D: Given an object's position and a constant velocity acting upon it, $m \ddot{x} = F_{0} \implies \ddot{x}(t) = \frac{F_{0}}{m}$. Our goal, for now would be to solve for $x(t)$. 
			    - Treating $\ddot{x}(t) = \frac{F_{0}}{m}$, $\int \ddot{x} dt = \int \frac{F_{0}}{m}dt = \dot{x}(t) = \frac{F_{0}}{m}t + const$ 
			      Ahh! So we do not know the bounds. Therefore, we get some arbitrary constant. So we realize we are actually missing additional information of the initial states that set us our bounds, on top of the differential equations. So you realize, you need some **Initial Conditions** on top of the differential equations, usually, to make progress in finding positions as functions of time, given forces, etc.
			    - For $v_{0} = \vec{v}(0)$. we say that $\dot{x}(t=0) = \frac{F_{0}}{m}(0) + const$ must now $= v_{0}$. Hence, $const = v_{0} - \frac{F_{0}}{m}$. 
			      So we have found the constant of integration, given the initial condition (or really, conditions at some point of time to set our paths in the phase space in stone)
			    - We then do the same thing for integrating the velocity, $x(t) = \int \dot{x} dt = \int (\frac{F_{0}}{m}t + v_{0})dt = \frac{F_{0}}{2m}t^{2} + v_{0}t + const$. Now, using $x(0) = x_{0}$, we get this constant and get our final form $x(t) = x_{0} + v_{0}t + \frac{F_{0}}{2m}t^{2}$
 3. *” Forces don't come from nowhere. They come from interactions. — VK”*
    - ![[Mechanics/attachments/Drawing 25-09-02-11-30-45]]
      Essentially, Newton's third law says, forces come in pairs, since interactions happen in pairs. For any force $F_{2\to1}$ acting on particle 2 due to particle 1, would have an equal and opposite force $F_{1\to2}$ acting on particle 2 due to particle 1.

	The general approach to solve problems, also includes decomposing forces acting upon a particle as internal and external forces. For instance, assuming particle 1 and 2 compose our internals of the system
	- $\vec{F_{1}}$ (force acting on particle $1$), would be equal to the sum $\vec{F_{2\to1}}+ \vec{F_{1,ext}}$
	- $\vec{F_{2}}$ (force acting on particle $2$), would be equal to the sum $\vec{F_{1\to2}}+ \vec{F_{2,ext}}$
	- $\dot{\vec{p_{1}}} = \vec{F_{1}}$ and $\dot{\vec{p_{2}}} = \vec{F_{2}}$ 
	- "The total momentum of the system" would be $\vec{p} = \vec{p_{1}} + \vec{p_{2}}$
		- $\implies \dot{\vec{p}} = \dot{\vec{p_{1}}} + \dot{\vec{p_{2}}} = \vec{F_{1}} + \vec{F_{2}} = \vec{F_{2\to1}} + \vec{F_{1\to2}} + F_{1,ext} + F_{2,ext} = F_{1,ext}+F_{2,ext} = F_{ext}$ (since $F_{1\to2} = F_{2\to1}$)
		- Therefore, the total momentum of the entire system changes with time, only when there is an external force acting upon the system. 
		  THAT, is the law of conservation of momentum. 
			  It's a law, not a theorem, even though it is derivable, since in classical mechanics, they are both equivalent statements, but in general, in fact, conservation of momentum is more fundamental than Newton's third law of motion.
	The internal forces all cancel out, and external forces, as we just saw, is what changes the momentum.
	As discussed, momentum conservation is actually more fundamental than Newton's 3rd Law, as it holds in more systems of physics than just Newtonian System.

