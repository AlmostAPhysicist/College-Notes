## Matrix Chain Multiplication Problem 
Recall:
For matrices $A,B,C$:
$ABC = (AB)C = A(BC)$

![[Tensor Networks/attachments/Drawing 25-11-04-02-12-11]]

Even though these are equivalent operations in terms of the outcome, they may not be equivalent in computation required.

For example, say their dimensions are as follows:
$A_{10 \times 20} B_{20 \times 5} C_{5 \times 15}$

- $(AB)C$
how many multiplications are needed to find $AB$?
![[Tensor Networks/attachments/Drawing 25-11-04-02-14-27|100%]]


---

## Implication in Tensor Train decomposition
![[Tensor Networks/attachments/Drawing 25-11-04-02-24-08|100%]]


---

Next time, we would be looking at how to compute partial derivatives within tensor trains for different tensors.


