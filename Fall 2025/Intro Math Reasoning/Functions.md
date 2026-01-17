Functions are just relations where each input has a unique output **AND** every element in the (restricted) domain has an output/image that it maps to in the Co-Domain.

i.e. $f:A \to B$ is a function if $(\forall x \in A) \exists! y \in B \text{ such that } y=f(x)$
i.e. $(\forall)$... $x_{1} \neq x_{2}$

- Define One-to-one 
- Define Onto 

Potato Diagrams 


---
**Theorem 1.** Let $A,B,C$ be nonempty. Let $f:A \to B$ and $g:B \to C$ be functions (Then $g \circ f : A \to C$ is a function)
- If $f \, \& \, g$ are both one-to-one, then so is $g \circ f$
- If $f$ is onto $B$ & $g$ is onto $C$ then $g \circ f$ is onto $C$
- If they are both bijective then so is their composition.

---
$A$ and $B$ are nonempty sets & $f:A \to B$ is a function.

- <u>Def:</u> let $X \subseteq A$ the <u>Image</u> of the set $X$ under f is the set $f(X):= \set{f(x):x \in X} = \set{y \in B: (\exists x \in X)f(x)=y}$
- <u>Def:</u> let $Y \subseteq B$ the <u>inverse image</u> of the set $Y$ under f is the set $f^{-1}(Y):= \set{x \in A: f(x) \in Y}$

Examples:
$f^{-1}(B)=A$ AND $f^{-1}(Range(A))=A$
$f(A)=Range(A)$ and not necessarily $B$.

Notice, for $S=B-A$, $f^{-1}(S) = \phi$
i.e. there exists no inverse image for such elements in the codomain, which is fine.
$f^{-1}(U \cup V) = f^{-1}(U) \cup f^{-1}(V)$.

>Note:
They (functions) do NOT respect Intersections, even though, they respect Unions
But that is not to say that inverse functions or preimages or inverse images respect them both the same way.

---

Q: Do inverse images respect intersections? 

Let's Experiment 

$f: \mathbb{R} \to \mathbb{R}$ be given by $f(x)=\cases{2x, x \geq 1\\2-2x, x<1}$
$y_{1} := [-6,6]$
$y_{2} := [4,\infty)$

![[Intro Math Reasoning/attachments/Drawing 25-12-01-09-09-04]]

$f^{-1}(y_{1})=[-2,3]$
$f^{-1}(y_{2})=(-\infty, -1] \cup [2, \infty)$

$y_{1} \cap y_{2} = [4,6]$
$f^{-1}(y_{1} \cap y_{2})= [-2,-1] \cap [2,3]$

which matches $f^{-1}(y_{1}) \cap f^{-1}(y_{2})$

This of course is not a proof, only an attempt to give us an insight.

So based on this we might <u>Claim</u> that this is possibly true which we can more formally prove.


<u>Claim</u> For all $Y_{1}, Y_{2} \subseteq B$, we have $f^{-1}(Y_{1} \cap Y_{2}) = f^{-1}(Y_{1}) \cap f^{-1}(Y_{2})$

Suppose $Y_{1}, Y_{2} \subseteq B$ 
Need $f^{-1}(Y_{1} \cap Y_{2}) = f^{-1}(Y_{1}) \cap f^{-1}(Y_{2})$

Note, these are both sets, so this need is a set equality.
So we can construct a 2 part proof by proving subset relations for both sets.

---


<u>False Claim</u> For all $X_{1}, X_{2} \subseteq A$, we (don't) have $f(X_{1} \cap X_{2}) = f(X_{1}) \cap f(X_{2})$

Proof attempt
Suppose $X_{1}, X_{2} \subseteq A$
Need Set Inequality 

- Part 1: Need $f(X_{1} \cap X_{2}) \subseteq f(X_{1}) \cap f(x_{2})$
Suppose $y \in f(X_{1} \cap X_{2})$, Need $y \in f(X_{1}) \cap f(X_{2}) \iff y \in f(X_{1}) \,\&\, y \in f(X_{2})$
That means $(\exists x \in X_{1} \cap X_{2})f(x)=y$

Since $x \in X_{1}$ we have $y \in f(X_{1})$
Since $x \in X_{2}$ we have $y \in f(X_{2})$

worked! So trouble must come from part 2.

- Part 2. Need $f(X_{1}) \cap f(X_{2}) \subseteq f(X_{1} \cap X_{2})$
Suppose $y \in f(X_{1}) \cup f(X_{2})$, Need $y \in f(X_{1} \cup X_{2})$ i.e. $(\exists x \in X_{1} \cap X_{2}) f(x)=y$
Then that means $(\exists x_{1} \in X_{1})f(x_1)=y$ & $(\exists x_{2} \in X_{2})f(x_2)=y$

But there is no reason to thing that $x_{1} = x_{2}$.

---
- Facts 
- For all $X_{1}, X_{2} \subseteq A,$ we have $f(X_{1} \cap X_{2}) \subseteq f(X_{1}) \cap f(X_{2})$
- If $f$ is one to one, then for all $X_{1}, X_{2} \subset A$, we have $f(X_{1} \cap X_{2}) = f(X_{1}) \cap f(X_{2})$
- If f is not one to one, then there exist bad sets so that $f(X_{1} \cap X_{2}) = f(X_{1}) \subsetneq f(X_{2})$
	- we can construct a counter example of functions that lack one to one-ness where the equality does not hold, and the first is only a proper subset of the latter.
- Images and Inverse images both respect Unions
- Inverse Images respect Intersections as well (because the inverse relations ARE one to one due to the definition of a function being asymmetric)
- So Inverse images follow all Boolean operators, images follow the union and follow intersection if it is one-to-one.

---
Q: Let $X \subseteq A$ is it true that $f^{-1}(f(X))\overset{?}{=}X$

Example:
![[Intro Math Reasoning/attachments/Drawing 25-12-01-09-38-07]]

$A = \set{1,2}$
say $X = \set{1}$
then $f(X) = \set{1}$
but $f^{-1}(f(X)) = f^{-1}(\set{1}) = \set{1,2}$

Clearly, $\set{1} \neq \set{1,2}$

So even though you would certainly get back the inputs, you might get something more.

So $X \subseteq f^{-1}(f(X))$

---

Does $f(f^{-1}(Y)) \overset{?}{=} Y$

As an example, say $Y=B$. $f^{-1}(B)=A$
but $f(f^{-1}(B)) = f(A) = Range(A)$
 which is not necessarily B.

Essentially, the elements in the codomain that are not in the Range of the input, do not contribute to the inverse image. Therefore, even if the preimage is the entire Domain, there may exist elements in the Co Domain that remain unmapped. And if your set of choice has such elements, the above statement will not be true.

Notice, $f \, \&\, f^{-1}$ are NOT inverse operations for all sets. They are only inverse operations for bijective functions $f$, since only then is $f^{-1}$ a function $B \to A$.

Otherwise, the preimage ($f^{-1}$) may not be a function itself (if $f$ is not onto (Domain of $f^{-1}$ would not math $B$) or one-to-one ($f^{-1}$ may not have a unique output for a single input)).

**DO NOT TRUST THE NOTATION**.

> In Linear Algebra 
> Column Space is the range of matrix (of applying matrix to vectors)
> Null Space is the inverse image of $\set{\vec{0}}$

---

>Note:
Endpoints of an output interval matches the bounds of input intervals IF the function is monotonously increase or decrease.

---
