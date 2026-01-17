## $\# 20$
Given that $A$ is a nonempty set with partial order $P$. For each $t \in A$, $$S_{t} = \set{x \in A : xPt}$$

The question then defines $\mathscr{F}$: (took a while for me to realize this is `\mathscr{F}` 🙂)
$$\mathscr{F} = \set{S_{t} : t \in A}$$
So this is just a set of the previously defined sets. (which complies with it being a subset of the Power set of $A$).

The question claims that this set of sets can be partially ordered by the $\subseteq$ relation.
Honestly, to me this is not obvious. But I am assuming that we have to prove part of why this is true so here's my attempt:

Given $a,b \in A$ be 2 arbitrary elements.

---

- To prove that $a P b \implies S_{a} \subseteq S_{b}$

<u>Assuming</u> that $aPb$, we thus <u>need to prove</u> that $(\forall x \in A)x \in S_{a} \implies x \in S_{b}$
Let $x$ and be an arbitrary element of $S_{a}$ (i.e., $x \in S_{a}$ and since $S_{a} \subseteq A, \, x \in A$)

By the definition of $S_{a}$, 
$x \in S_{a} \implies xPa$

We assumed that $aPb$, then since $P$ is partially ordered, it is transitive, and hence we can conclude that it must follow from the above 2 statements that $xPb$.

Therefore, $$(\forall x \in A) x \in S_{a} \implies xPa \overset{aPb\, \text{and}\, P \text{ is partial ordered}}{\implies} xPb  \implies x \in S_{b}$$

Hence, proved $aPb \implies S_{a} \subseteq S_{b}$.

---

- To prove if $S_{a} \subseteq S_{b} \implies aPb$

This time, we <u>assume</u> that $S_{a} \subseteq S_b$ i.e., $(\forall x \in A) x \in S_{a} \implies x \in S_{b}$
we <u>need to prove</u> $aPb$.

From our assumption,
$(\forall x \in A) xPa \implies xPb$

I can, due to reflexivity of $P$ say that $\forall a \in A, aPa$ hence $a \in S_{a}$
Which means by assumption, $a \in S_{b}$

Then, it follows by the definition again of the construction of the set $S_{b}$ that $\boxed{aPb}$.

Hence, proved.

---

## $\#22$

1. We let $\leq_{1}$ and $\leq_{2}$ be total orders (or as the question has mentioned, linear orders or just orders) on the same nonempty set A. 
>i.e., for both the relations, any element $x$ of A can be related to any element of $y$ of A.  

	And we let the relation $P$ on $A$ defined by $$(aPb) \iff (a \leq_{1} b \, \mathbf{\text{and}}\, a \leq_{2}b)$$
We need to prove that $P$ is a partial order on $A$.

I.e. <u>to prove</u> that $P$ is reflexive, antisymetric and transitive.


- Reflexivity 

Since the two relations $\leq_1$ and $\leq_{2}$ are total orders on $A$, $(\forall a \in A) (a \leq_{1} a\, \land \, a \leq_{2} a)$ which implies by our definition of $P$ that $aPa$.

- Antisymmetry

$aPb$ and $bPa$, we <u>need to prove</u> $a=b$

Since $\leq_{1}$ and $\leq_{2}$ are both total orders, they too are both partial orders and hence satisfy antisymmetry.

Our assumption in this case $$(aPb \land bPa) \implies (a \leq_{1} b \land a \leq_{2} b) \land (b \leq_{1} a \land b \leq_{2} a)$$

$a \leq_{1} b \land b \leq_{1} a$ itself is sufficient due to the relation being totally ordered to say that $a=b$.

- Transitivity 

<u>Assumption</u> $aPb$ and $bPc$, <u>need to prove</u> $aPc$
since both the relations of concern are totally ordered, **they are also transitive**.

$(aPb \land bPc) \implies (a \leq_{1} b \land a \leq_{2} b) \land (b \leq_{1} c \land b \leq_{2} c)$

$\overset{\leq_{1} \, \text{and} \, \leq_{2} \text{ are totally ordered and hence transitive}}{\implies} a \leq_{1} c \land a \leq_{2} c \overset{\text{by definition of P}}{\implies} aPc$

Hence, proved.

---

2.  An example of nonempty $A'$ and total ordered $\leq_{3}$, $\leq_{4}$ on $A'$ such that $R$ defined by $aRb \iff [(a \leq_{3} b) \land (a \leq_{4} b)]$ is <u>not a total order</u> is:

$A'= \set{1,2,3}$
$\leq_{3} = \set{(1,1), (1,2), (1,3), (2,2), (2,3), (3,3)}$
$\leq_{4}=\set{(1,1), (2,1), (3,1), (2,2), (3,2), (3,3)}$

I.e., traditionally, the total orders $\leq$ and $\geq$

Since, for cases like $1$ and $3$, $1 \leq_{3} 3$ but $1 \leq_{4} 3$ does not exist. (Instead, $3 \leq_{4} 1$ does) 
>Traditionally, $1 \leq 3$ but $1 \not \geq 3$

Hence, $1 \not R 3$.
In fact, in this case, $R$ would be only relate an element to itself, no non-identical elements… $R= \set{(1,1), (2,2), (3,3)}$. (Although it is still Antisymmetric and transitive).

Hence, it is not a total order but only a partial order.

From this, I understand that $R$ is merely an intersection of our total orders $\leq_{3}$ and $\leq_{4}$ so if we define our orders such that their intersection is not a total order, for example, in my case I chose 2 orders where the intersection happens only at places where the two components of an ordered pair are identical, we define the required orders.


---







