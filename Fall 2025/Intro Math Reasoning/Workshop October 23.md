1. **R** is a reflexive relation on $A$ **iff** $I_{A} \subseteq R$
- Part 1.
Assume that $I_{A} \subseteq R$
Then by definition of $I_{A}$, $\forall x \in A, (x,x) \in I_{A}$
And since $I_{A} \subseteq R$, such $(x,x) \in R$.

Since we just showed that $\forall x \in A, (x,x) \in R$, $R$ is a reflexive relation on $A$.

- Part 2.
Assume $R$ is Reflexive.
Then we know that $\forall x \in A, (x,x) \in R$
let this ordered pair be $y$.
$y \in R$
Since $I_{A} = \set{(x,x):x \in A}$
So for all elements $y=(x,x) \in I_{A}$, $y \in R$
therefore $I_{A} \subseteq R$

---

2. $R$ is symmetric **iff** $R = R^{-1}$
- Part 1.
<u>Assume</u> $R = R^{-1}$
<u>Need to prove</u> $R$ is symmetric. 

so we need to prove that $\forall (x,y) \in A,  (x,y) \in R \implies (y,x) \in R$.

$\forall x,y \in A$ if $(x,y) \in R$ then 
by definition $(y,x) \in R^{-1}$
And since $R=R^{-1}$
$\forall$ $a \in R^{-1}$, $a$ would also be $\in R$
Hence we know that $(y,x) \in R^{-1} \implies (y,x) \in R$

Therefore, $\forall x,y \in A, (x,y) \in R \implies (y,x) \in R$

- Part 2.
<u>Assume</u> $R$ is symmetric 
<u>Need to Prove</u> $R=R^{-1}$

so we need to prove that $\forall a,b,x,y \in A, (a,b) \in R \implies (a,b) \in R^{-1} \,\text{AND}\, (x,y) \in R^{-1} \implies (x,y) \in R$

Since $R$ is symmetric, $\forall a,b \in A, (a,b) \in R \implies (b,a) \in R$
but since $(b,a) \in R$, by definition of the inverse relation, $(a,b) \in R^{-1}$
Hence, $\forall a,b \in A, (a,b) \in R \implies (a,b) \in R^{-1}$

So $R \subseteq R^{-1}$

$\forall x,y \in R^{-1}, (y,x) \in R^{-1} \implies (x,y) \in R$
But since $R$ is symmetric, $(x,y) \in R \implies (y,x) \in R$

therefore, $R^{-1} \subseteq R$.

Hence, $R = R^{-1}$





