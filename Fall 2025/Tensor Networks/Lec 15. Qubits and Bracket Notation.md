Last time:
**Qubit**: represented by a vector $\ket{v}$ in a $2D$ vector space.

$$\ket{v} = c_{1}\ket{\uparrow} + c_{2}\ket{\downarrow}$$
$\ket{v}, \ket{\uparrow}, \ket{\downarrow}$ are each of unit length.

Moreover, $\ket{\uparrow}, \ket{\downarrow}$ are **orthonormal** 
So the **inner product** between the both is zero:
$$\braket{\uparrow | \downarrow}=0$$
<u>Pythagoras</u>
$1^{2} = c_{1}^{2} + c_{2}^{2}$
$p_{1}, p_{2}$ probabilities of the state $\ket{v}$ being found with spin up or spin down 

<u>quantum computing notation</u>
$\ket{0} = \ket{\uparrow} = \begin{pmatrix}1 \\ 0\end{pmatrix}$ (canonical basis $e_{1}$)
$\ket{1} = \ket{\downarrow} = \begin{pmatrix}0 \\ 1\end{pmatrix}$ (canonical basis $e_{2}$)

---

![[Tensor Networks/attachments/Drawing 25-10-21-02-12-13|100%]]


---
From HP3:

$\braket{\Psi|\Psi}$
Applying the Hamiltonian to transform this abstract wave function into a wave function of a certain coordinate of choice is the same as 

$\braket{\Psi | \hat{H} | \Psi}$

$\braket{\Psi \ket{\hat{H}} \bra{\hat{H}} \Psi} = \hat{H} \Psi$
So 

$\braket{\Psi \ket{\hat{x}} \bra{\hat{x}} \Psi} = \Psi(x)$

and so on to describe the wave function as a function of **position**, **momentum**, **energy**, etc.

---

