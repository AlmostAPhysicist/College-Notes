## 1.
$$A = \set{1,2,3}$$
Examples of Relations defined on $A \times A$ which are
1. reflexive, symmetric and transitive
	- $\set{(1,1), (2,2), (3,3)}$
2. reflexive, symmetric and not transitive
	- $\set{(1,1), (2,2), (3,3), (1,2), (2,1), (1,3), (3,1)}$
	- (You have $(2,1)$ and $(1,3)$ but no $(2,3)$)
3. reflexive, not symmetric, and transitive
	- $\set{(1,1), (2,2), (3,3), (1,2), (2,3), (1,3)}$
4. reflexive, not symmetric, and not transitive
	- $\set{(1,1), (2,2), (3,3), (1,2), (2,3)}$
5. not reflexive, symmetric, and transitive
	- $\set{(1,2), (2,1), (1,3), (3,1), (2,3), (3,2)}$
6. not reflexive, symmetric, and not transitive
	- $\set{(1,2), (2,1), (1,3), (3,1)}$
7. not reflexive, not symmetric, and transitive
	- $\set{(1,2), (2,3), (1,3)}$
8. not reflexive, not symmetric, and not transitive
	- $\set{(1,2), (2,3)}$

---

## 5.
For a given relation, $S$ on $\mathbb{R}$ defined as: $xSy \iff x<y+1$
- <u>Reflexive</u>
Yes, the relation <u>is reflexive</u> since $(\forall x \in \mathbb{R})\, x<x+1 \implies 0<1$ is obviously true.

- <u>Symmetric</u>
$(x,y \in \mathbb{R})\, (x<y+1) \cap (y<x+1)$ only exists in a certain region within the entire number line. i.e., the regions satisfying such relations are bounded to be proper sets of $\mathbb{R}$ ($\subsetneq \mathbb{R}$). Therefore, the relation is not true for all $x,y \in \mathbb{R}$

As a counterexample, $x=1$ and $y=100$
$xSy$ here since $1<100+1$ is true. But clearly, $ySx$ or $100<1+1$ is **false**.

Therefore, since $\exists x,y \in \mathbb{R}: xSy \, \text{and}\, y\not Sx$, the relation is **not symmetric**.

- <u>Antisymmetric</u>
**No**, since $\exists x,y \in \mathbb{R} : x<y+1 \,\text{and}\, y<x+1 \, \text{but}\, x \neq y$.
For example, $x=0$ and $y=0.1$.

- <u>Transitive</u>
**No**, since $(a,b,c \in \mathbb{R})\exists (a,b), (b,c) \in S : (a,c) \notin S$.
For example, $a=1.5$, $b=0.75$ $c=0$
Here, $a<b+1$ since $1.5<1.75$ and $b < c+1$ since $0.75 < 1$
but $a \not < c+1$ since $1.5<1$ is false.

---

## 6.
For a given relation $E$ defined on $\mathbb{R}$ as: $xEy \iff xy \leq x+y$

- <u>Reflexive</u>
**No**, this is not reflexive since $\exists x \in \mathbb{Z}_{\geq0} : x^{2}>x+x$
For example $x=7$. 
$x^{2} = 49$ and $x+x = 2x = 14$ hence $x^{2} \leq x+x$ is **false** (and the negation, $x^{2}>2x$ is true.)

- <u>Symmetric</u>
**Assumption:** $x,y \in \mathbb{Z_{\geq0}}: xy \leq x + y$ ($xEy$)
**Need to prove:** $yEx \implies yx \leq y + x$

Since $\forall x, y \in \mathbb{Z_{\geq0}}$, $xy = yx$ and $x+y = y+x$, 
$xy \leq x+y \implies yx \leq y+x$

Hence, **Yes**, the relation is Symmetric.

- <u>Antrisymmetric</u>
**No** since $\exists x,y \in \mathbb{Z_{\geq0}}: xy \leq x+y \, \text{but} \, x \neq y$
For example, $x=1$ and $y=2$
so $xy=2$, $x+y=3$, therefore $xy \leq x+y$ but $x \neq y$

- <u>Transitive</u>
**No** since $\exists a,b,c \in \mathbb{Z_{\geq0}}: ab \leq a+b, bc \leq b+c \, \text{but}\, ac > a+c$
$a=100$, $c = 200$, $b = 0$

Then $ab = 0 \leq 100 = a+b$, $bc = 0 \leq 200 = b+c$ but $ac=20000 > 300 = a+c$

---


