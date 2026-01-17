![[Tensor Networks/attachments/Drawing 25-09-09-02-11-28|100%]]

### Example 
- 2 Coins, each has two outcomes (Heads or Tails)
![[Tensor Networks/attachments/Drawing 25-09-09-02-16-18|100%]]
The reason would even WANT to do something like this is that given the rank has this property, you can represent a rank $n$ tensor of size $(a)(b)(c)$, you could represent as sums of $n$ terms of vectors of size $a$, $b$, $c$.

Therefore, you can compress information of $a \cdot b \cdot c$ elements to $n * (a+b+c)$ elements.

The essence of why that's possible is really that give that there are only so many independent columns, (or whatever your intuition for rank is), there is redundant information in the matrix.

As an example, $a=b=c=10$ for a rank $10$ matrix can be containing $10^{3}$ elements ($1000$ entries)

But you can compress it (losslessly here), to $10 * (10+10+10) = 300$ entries. Often, you only want a lower rank approximation of the matrix.

---

## Linearity 
Like operations like Differentiation ($\frac{d}{dt}(f + g) = \frac{df}{dt} + \frac{dg}{dt}$ and $\frac{d}{dt}(cF) = c \frac{dF}{dt}$),
A tensor product is also a **Bilinear** (Linear in each factor).

- $(u_{1} + u_{2}) \otimes v = u_{1} \otimes v + u_{2} \otimes v$
- $u \otimes (v_{1} + v_{2}) = u \otimes v_{1} + u \otimes v_{2}$
- $(cu) \otimes v = c(u \otimes v)$
- $u \otimes (cv) = c(u \otimes v)$

The difference essentially is, say you operate linearly on $2$ vectors, the same operation would happen to each component. 
But here you are feeding in a pair of $2$ vectors themselves. The operations on the vectors are linear but the operations in the elements themselves are index-wise.


$det(A+B) \neq det(A) + \det(B)$
But if instead of feeding the determinant operator individual columns, instead of the entire matrix itself.

Since $det(\begin{bmatrix}v_{1} & v_{21} + v_{22} & v_{3}\end{bmatrix}) = det(\begin{bmatrix}v_{1} & v_{21} & v_{3}\end{bmatrix})+det(\begin{bmatrix}v_{1} & v_{22} & v_{3}\end{bmatrix})$
and $det(\begin{bmatrix}cv_{1} & v_{2} & v_{3}\end{bmatrix}) = cdet(\begin{bmatrix}v_{1} & v_{2} & v_{3}\end{bmatrix})$, it is essentially linear for the individual vectors themselves.

This sort of linearity in not the object itself but the elements of the objects correspondingly is called **Multilinearity**.

Just as a Matrix is something that performs a linear operation, a **Tensor is an object that performs a Multilinear operation**

