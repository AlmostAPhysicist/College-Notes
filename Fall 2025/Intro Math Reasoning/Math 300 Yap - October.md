## Inverse Relation 
Given two non-empty sets $A$ and $B$, then if relation $R:A \to B$ is follows $R \subseteq A \times B$ is defined from $A$ to $B$, 
$R^{-1}:=\set{(y,x):(x,y) \in R} = \set{(y,x):x \in A, y \in B, x R y}$

**Every relation has an inverse!**

(Because the definition of a Relation and an Inverse Relation are symmetrically defined, just swapping the ordered pair positions. But for functions, there is an additional constraint that is asymmetric in the position of the ordered pair (one way can be one-to-many but the other way around can not be many-to-one) we will talk more about functions later.)

---
$R: A \to A$ is now no longer called “from” this “to” that BUT **on** set $A$.

---
>Divisibility is **not** about division, but multiplication (almost philosophical).
>In fact, you can divide **divisibility** without the notation of **division**.
>$a|b$ means $(\exists q \in \mathbb{Z})b=q \cdot a$, i.e., $a$ divides $b$
>Note, this also means that $b$ is a multiple of $a$

>Empty set $\phi$ is also a relation! (Of course, $\phi \subseteq \mathbb{Z} \times \mathbb{Z}$)
>Again, as long as you have a set $S:A \to B \text{ such that } (\forall (x,y) \in S), x \in A, y \in B$

**Inverse is unrelated to a negation**
For example, the inverse of a relation ($<$ on $R$) would NOT be ($\geq$ on $R$) since ($<$ on $R$) does NOT contain any equalities. The inverse would only be swapping two elements such that they STILL satisfy the relation.
In this case, $(a,a) \notin Relation$.

>**The relation is NOT about the compliment**. Therefore, the true inverse for ($<$ on $R$) would be ($>$ on $R$)
>Essentially, for the inverse, **the Relation itself does not change, only the actors do.**

$L = \set{(x,y) \in \mathbb{R}^{2}:x<y}$
$\implies L^{-1} = \set{(y,x) \in \mathbb{R}^{2}:x<y} = \set{(x,y) \in \mathbb{R}^{2}:x>y}$
>Notice how only your actors within the set's ordered pair changed. Everything else remained the same. The inverse relation, would be one where the actors don't change their position, but instead, the relation itself changes. In this case, this is why $>$ on $R$ is the inverse of $<$ on $R$

>$(a|b)$ ($a$ divides $b$) can be inverted to $(b|a)$ ($b$ divides $a$). So you literally change the actors. If you have a name for how in this swapped theatrics, $a$ relates to $b$ with another relation, you give it a name, but in many cases, you do nothing but swap actors.

Similarly, for a relation like $love (\heartsuit)$, the inverse is NOT *hate* or *not love*.
Defining $a \heartsuit b$ as $b$ is loved by $a$, or $a$ loves $b$, then the inverse is just swapping the order and would be $b \heartsuit a$

- $a<b$ changes to $a>b$
- $a$ divides $b$ changes to $b$ divides $a$
- loves changes to is loved by
- $\phi$ remains $\phi$
- $A \times B$ changes to $B \times A$
and so on…

---

### Special types of relations 
- **Reflexive**: $(\forall x \in A)xRx$
- **Symmetric** $(\forall x,y \in A) xRy \implies yRx$
- **Antisymmetric** $(\forall x,y \in A) (xRy \, \underline{and}\, yRx) \implies x=y$
- **Transitive** $(\forall x,y,z \in A) (xRy \, \underline{and}\, yRz) \implies xRz$

**Not** on these notions means you swap $\forall$ to **there exists a counter example that does NOT satisfy this relational condition**

For example, **not Reflexive** would be $\exists x \in A : x \not R x$

>The counter example used to depict that a certain relational conditional does not hold, keeping it from being special, is called an **obstruction**.

---
