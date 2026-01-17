- $\delta_{ij} = \text{kronecker symbol} = \cases{1 \, \text{if} \, i=j \\ 0 \, \text{otherwise}}$
	takes the value of either 0 or 1.
	Therefore, it would give you the entries of the identity matrix of an arbitrary size.
		$(Id)_{ij} = \delta_{ij}$

---
Example:

vectors $\vec{v_{1}}, \vec{v_{2}}, \dots, \vec{v_{n}}$ are orthonormal if $\vec{v_{i}} \cdot \vec{v_{j}} = \delta_{ij} = \cases{1 \, \text{if} \, i=j \\ 0 \, \text{otherwise}}$
(i.e. the dot product of the vectors with all the vectors EXCEPT when the vector is itself is $0$, and the magnitude of each vector is $1$ (since $\vec{v_{i}} \cdot \vec{v_{i}} = |v_{i}|^{2}$))

![[Tensor Networks/attachments/Drawing 25-09-04-02-19-30|100%]]
So the contraction of a matrix with the identity matrix gives you the trace of a matrix.

In fact, 

![[Tensor Networks/attachments/Drawing 25-09-04-02-27-13|20%]]
So contracting a matrix with itself gives the trace of a matrix.
![[Tensor Networks/attachments/Drawing 25-09-04-02-31-15]]

---
![[Tensor Networks/attachments/Drawing 25-09-04-02-38-48]]


![[Tensor Networks/attachments/Drawing 25-09-04-02-54-20]]

It turns out that if you take the diagram more seriously, and move things around, and they seem to be symmetric, you could suggest actual beautiful facts about linear algebra, just from the diagram!
For example, $tr(AB) = tr(BA)$.


## Building Tensors — Tensor Products 
$\text{Tensor Product} \otimes (\text{\\otimes})$

![[Tensor Networks/attachments/Drawing 25-09-04-02-59-14 | 100%]]



$(\vec{u} \otimes \vec{v})_{ij} = \vec{u}_{i}\vec{v}_{j}$
$(\vec{u} \otimes \vec{v} \otimes \vec{w})_{ijk} = \vec{u}_{i}\vec{v}_{j}\vec{w}_{k}$

<u>Question</u>:
If $A$ is an arbitrary $n \times n$ matrix such that $A = \vec{u} \otimes \vec{u}$

NO! 
$A_{n \times n}$ requires $n$ numbers to specify.
$\vec{u}$, $\vec{v}$ would each require $n$ entries.

So therefore, would need to always exist ways to compress $n^{2}$ numbers to just $2n$ numbers.
Although, $n^{2} = 2n$ for $n=2$. And therefore, it IS possible for a $2$ Dimensional Matrix by that logic.
But it turns out that if you work out $\vec{u} \otimes \vec{v}$, you would get $\begin{bmatrix}u_{1}v_{1} & u_{1}v_{2} \\ u_{2}v_{1} & u_{2}v_{2}\end{bmatrix}$
but the $det(\vec{u} \otimes \vec{v}) =0$ which does not correspond to all the possible $2 \times 2$ matrices.

**Although the good news... is**
an $n^{2}$ matrix can be a sum of at minimum $r$ tensor products of $r$ pairs, where $r$ is the rank of $A$

$A = \sum_{i=1}^{r} \vec{u}_{i} \otimes \vec{v}_{i}$

Therefore you actually COULD find a lower rank approximation of a tensor (and hence compress data).

