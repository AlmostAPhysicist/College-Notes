Later in the course, instead of a course with a single differential equation:
$y_{1}'(t) = f_{1}(t, y(t), y_{2}(t))$
$y_{2}'(t) = f_{2}(t,y(t), y_{2}(t))$

and so on. This can represent a set of differential equations determining coordinates of a certain vector quantity that evolves over time.

<u>Example:</u>
$f_{1}(t, a, b) := ab - a + cos(t)$
$f_{2}(t, a, b) := b + ab^{2}$

So you can sort of have really ugly functions, coupled differential equations, and so on.

We need to work on some tools for such things. Let's explore...


![[Elem Diff Equations/attachments/Drawing 25-10-08-02-03-18|100%]]

---
![[Elem Diff Equations/attachments/Drawing 25-10-08-02-35-59|100%]]


---

So, essentially, we can learn later that we can solve linear systems of differential equations in $N$ dimensions (problems when you have infinite dimensions maybe?)

But how to solve non linear systems of differential equations?

>We make them linear.
>We use Taylor's Formula.

---
![[Elem Diff Equations/attachments/Drawing 25-10-08-02-47-06|100%]]
