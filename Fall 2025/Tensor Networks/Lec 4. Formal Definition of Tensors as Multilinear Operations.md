Last time, we were defining tensors in a more formal way that just saying an object that is essentially a collection of objects that can be reached by $n$ indices.

---
Formal #definition 
A tensor is any function defined between vector spaces which is linear one factor at a time (multilinear map)

<u>example:</u>
- $det : M(n,n) \to \mathbb{R}$
	$A \to detA$

not linear since $det(A_{1}+A_{2}) \neq det(A_{1}) + det(A_{2})$
BUT...
$det : \mathbb{R}^{n} \times \mathbb{R}^{n} \times \dots \times \mathbb{R}^{n} \to \mathbb{R}$
	$(\vec{c_{1}}, \vec{c_{2}}, \dots, \vec{c_{n}}) \to det(\vec{c_{1}}\,\vec{c_{2}}\dots\vec{c_n})$

This is a linear operation on each factor.
example:
	$det(\begin{bmatrix}a_{1}+a_{2} & b \\ c_{1}+c_{2} & d\end{bmatrix}) = det(\begin{bmatrix}a_{1} & b \\ c_{1} & d\end{bmatrix}) + det(\begin{bmatrix}a_{2} & b \\ c_{2} & d\end{bmatrix})$
	and $det(\begin{bmatrix}ra & b \\ rc & d\end{bmatrix}) = r \, det(\begin{bmatrix}a & b \\ c & d\end{bmatrix})$
	$\implies det(\vec{c_{1}} + \vec{c_{2}}, c_{3}) = \det(c_{1}, c_{3}) + \det(c_{2}, c_{3})$
	and $det(r\vec{c_{1}}, \vec{c_{2}}) = r \, det(\vec{c_{1}}, \vec{c_{2}})$

<u>another example</u>

![[Tensor Networks/attachments/Drawing 25-09-11-02-14-49|100%]]


**So a tensor, actually IS an operation itself, that is multilinear.**

**i.e., for individual input components, it satisfies linearity in the following way** $$f(c_{1}+c_{2}, c_{3}, \dots. c_{n}) = f(c_{1}, c_{3}, \dots, c_{n}) + f(c_{2}, c_{3}, \dots, c_{n})$$ and $$f(a_{1}c_{1}, a_{2}c_{2}, \dots ,a_{n}c_{n}) = a_{1}a_{2} \dots a_{n} f(c_{1}, c_{2}, \dots, c_{n})$$

---

<u>example</u>
(Gauss)
![[Tensor Networks/attachments/Drawing 25-09-11-02-28-49|100%]]
