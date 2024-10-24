x
# Queries About Design
- [x] Images have pressure sensors hindering the view for computer vision?
	Yes, we have to include that in the algorithm

# Readings and Resources
- The Paper on pressure sensors and their position along with torque with positional constraint
	[Control of propellant slosh dynamics in observation spacecraft using Model Free Control and pressure sensors](<file:///E:/BoxDrive/Box/Star/Control_of_propellant_slosh_dynamics_in_observation_spacecraft_using_Model_Free_Control_and_pressure_sensors.pdf>)
	
1. *Problem of Fluid Sloshing*: Fluid sloshing can destabilize a spacecraft's movement. The paper acknowledges that the relationship between input forces (like torque) and sloshing is complex—it's not easy to predict exactly how the fluid will move.

2. *Simplified Local Models*: Instead of tackling the whole problem at once, the approach breaks it down into simpler, localized relations using differential equations. These local approximations capture how a small portion of the sloshing behaves in response to input (like control torque). It’s like zooming in on small parts of a complicated puzzle and understanding each piece before putting the whole puzzle together.

3. *Using Data and Mathematics to Stitch Models Together*: By gathering data from pressure sensors and using mathematical methods (which might seem overly complex), they piece these smaller, local models together into a bigger picture. This overall model is like a multi-spring system, where each spring represents a part of the fluid’s movement.

4. *Refinement with Bounds and Limits*: As more data is collected, they adjust the model to be more accurate. They create upper and lower bounds around the predicted behavior (like guardrails on a highway) until their predicted model closely matches the actual behavior of the sloshing fluid.

5. *Goal*: The ultimate goal is to have a model that is accurate enough for practical control purposes. With this model, they can design a control system that reduces the disruptive effects of sloshing, allowing the spacecraft to maneuver more smoothly and remain stable.

Let's align your intuition with the key equations from the paper, breaking down where each equation fits into the different parts of the process you outlined. I'll explain what each equation represents and how it ties into your interpretation:

### 1. *Understanding the Problem of Fluid Sloshing*
   - Your Interpretation: The relationship between the input torque and fluid sloshing is complex.
   - *Equation*: 
     $E(y, \dot{y}, \ldots, y^{(a)}, u, \ldots, u^{(b)}) = 0$
     - *Explanation*: This equation expresses that there exists a complex relationship between the control input $u$ (like the torque applied to the spacecraft) and the observed output $y$ (related to the sloshing motion). Here, $E$ is an unknown function that describes how all these factors interact. It acknowledges that predicting sloshing exactly is challenging.
     - Connection: This represents the initial assumption that there’s a differential relationship between the forces applied and the resulting sloshing, but it’s too complicated to know exactly.

### 2. *Breaking Down the Problem into Simpler Local Models*
   - Your Interpretation: For local systems, the problem can be approximated with simpler equations.
   - *Equation*: 
     $\ddot{y}_m = F_y + \lambda u$
     - *Explanation*: This is a local approximation of the complex relationship. Here, $\ddot{y}_m$ represents the measured acceleration of the sloshing, $F_y$ is an unknown term that captures disturbances, and $\lambda$ is a scaling factor that relates the control input $u$ (e.g., torque) to the sloshing response. It simplifies the unknown dynamics into a form where the input $u$ directly influences the output.
     - Connection: This fits into the idea of approximating the relationship locally. It's like zooming into one part of the sloshing behavior and understanding how it responds to applied forces. 

### 3. *Stitching Together Local Relations with Data*
   - Your Interpretation: Using data and math to combine local models into a broader representation.
   - *Equation*:
     $F̂_y(t) = \frac{5!}{2T^5} \int_{t-T}^{t} \{[T^2 - 6T(t - \sigma) + 6(t - \sigma)^2] y_m(\sigma) - \frac{\lambda}{2} [T - (t - \sigma)]^2 (t - \sigma)^2 u(\sigma) \} d\sigma$
     - *Explanation*: This equation is used to estimate $F_y$, the unknown disturbance term, by integrating over measurements of $y_m$ (slosh acceleration) and $u$ (control input) over a time window $T$. It helps refine the local approximation by incorporating real data, essentially making the model better over time.
     - Connection: This is where the paper uses real data to improve its understanding of the sloshing dynamics, helping to "stitch" the local models into a more accurate broader understanding. It’s the complicated math that refines the local model.

### 4. *Refining with Upper and Lower Bounds*
   - Your Interpretation: Using data to bring upper and lower bounds around predictions, matching reality.
   - *Equation*:
     $\ddot{\Delta P} \in -(\kappa_1 + \kappa_2) \dot{\Delta P} - \kappa_1 \kappa_2 (\Delta P - [\Delta_{min}, \Delta_{max}])$
     - *Explanation*: This describes how to constrain the behavior of $\Delta P$ (the difference in pressure measurements that indicate sloshing) to stay within desired limits $[\Delta_{min}, \Delta_{max}]$. It controls how quickly the pressure can change and keeps the sloshing within safe bounds.
     - Connection: This is the mathematical way of putting those "guardrails" you mentioned, ensuring the predictions of sloshing (pressure differences) stay within a range that matches the real-world behavior. It helps refine the model to ensure that its predictions don't go wildly off-track.

### 5. *Achieving Practical Control with a Complete Model*
   - Your Interpretation: The refined model allows for practical control of sloshing.
   - *Equation*:
     $\thetä = \lambda_1 \Gamma_c + F_1(t)$
      $\ddot{\Delta P} = \lambda_2 \Gamma_c + F_2(t)$
     - *Explanation*: These two equations describe the spacecraft's response ($\ddot{\theta}$ its rotational acceleration) and the pressure changes ($\ddot{\Delta P}$, related to sloshing) as functions of the control input $\Gamma_c$ (the torque applied) and disturbances ($F_1$ and $F_2$). $\lambda_1$ and $\lambda_2$ are scaling factors. These simplified models are now refined enough to be used in practical control scenarios.
     - Connection: These equations represent the final product—a model that’s accurate enough to use for controlling the spacecraft. It takes into account the refined understanding of sloshing behavior, allowing the control system to effectively minimize the impact of sloshing.

### Summary
You correctly identified the flow from understanding a complex problem to breaking it down, refining it with data, and building a usable control strategy. Each of these equations fits into that process:

1. Acknowledge the complexity ($E(y, \ldots) = 0$).
2. Simplify locally ($\ddot{y}_m = F_y + \lambda u$).
3. Refine with data ($F̂_y \approx \ldots$).
4. Add bounds for accuracy ($\ddot{\Delta P} \in \ldots$).
5. Apply the refined model for control ($\thetä = \ldots, \ddot{\Delta P} = \ldots$).

Together, they show how to go from a messy real-world problem to a manageable control solution using a mix of approximation and real-time data integration.

---
**Unsupervised learning** : 
(in machine learning) training a model on data to generate more samples of that data

- **Geoffrey E. Hinton**  
University of Toronto, Canada
Nobel Prize in Physics 2024
_“for foundational discoveries and inventions that enable machine learning with artificial neural networks”_
https://youtu.be/itywoDU3sL8?si=T_8l7dQOpOgHq9D7

>Turing Award Winner Yann LeCun
>	“We all know that unsupervised learning is the ultimate answer”

Unsupervised learning:
Training AI on unlabeled data and make AI cluster datasets on its own.

- We need not provide labels for things every time 
- If datasets change, we can still scale algorithms relatively easily with unsupervised learning since the dataset is still unlabeled. Again, we need not generate labels ourselves and come up with our own categorization algorithms. AI comes up with its own weights for different character sets that we can look up. 

useful resources:
https://sladewinter.medium.com/video-frame-prediction-using-convlstm-network-in-pytorch-b5210a6ce582
https://stackoverflow.com/questions/42633644/using-keras-for-video-prediction-time-series
---


---
On Nikita's Problem on background noise because of the Pi and the voltage drop:
- In particle physics experiments, the same issue is tacked by using different detectors for either same or different kind of data (for instance, in our case either another pressure sensor or use the computer vision for conformation) to not have redundancies due to background noise.