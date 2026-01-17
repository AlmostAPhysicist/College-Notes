The word **Tensor**, doesn't really have a very set definition. Depending on the field of science (like machine learning/statistics, or mathematics, or physics which would be a few places you would hear that) you are hearing it in, it'll have different meanings.

## “Down to Earth Version of what a Tensor is” :)
![[Tensor Networks/attachments/Drawing 25-09-02-02-12-14]]

>So, essentially, if you have a mathematical object that has several components, to get to a particular entry, if you need $n$ indices, you define that to be a **rank $n$ tensor**

A scalar is a rank 0 tensor.
A vector is a rank 1 tensor.
A matrix is a rank 2 tensor.
.
.
.

You can then cascade down to different objects that can further be represented as these objects you are familiar with. Intensity of a pixel color for instance would be a scalar, or a rank 0 tensor. The intensities defined for a pixel within a matrix, or a rank 2 tensor would define an image.

You could come up with any phase space or any coordinate system with arbitrary dimensions where a discretized set of points would be represented by a rank n tensor.
Note: it grows pretty fast with the dimensions.

---
#tidbit 
> you can sometimes have sparse tenors, where most entries are zero. In which case, it might be nice to compress the data.


For a tensor with same length of each dimensions, say k, for n dimensions, obviously, the number of entries would be $n^{k}$.
The purpose of a tensor network could, then be to keep track of interesting features of the tensor without storing every single entry.

### A more Mathy Example...
- Taylor expansion of a function of two variables.
For 1D, $f(x) = f(0) + f'(0)x + \frac{1}{2}f''(0)x^{2} + \frac{1}{3!}f'''(0)x^{3} + \dots$

Similarly, for 2D, ![[Tensor Networks/attachments/Drawing 25-09-02-02-32-03|100%]]

![[Tensor Networks/attachments/Drawing 25-09-02-03-07-02]]

So, overall, this is just a very compact and convenient notation to represent tensor products.