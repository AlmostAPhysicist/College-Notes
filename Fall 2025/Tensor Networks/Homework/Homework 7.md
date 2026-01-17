## Problem 26

**Given**
$$
f(x,y)=\frac12\Big[(x-1)^2+(y-1)^2+x^2y^2\Big].
$$

### (a) Critical point condition

Compute partial derivatives:
$$
\frac{\partial f}{\partial x}
=\frac12\Big(2(x-1)+2xy^2\Big)
=(x-1)+xy^2,
$$
$$
\frac{\partial f}{\partial y}
=\frac12\Big(2(y-1)+2yx^2\Big)
=(y-1)+yx^2.
$$

At a critical point, both are zero:
$$
(x-1)+xy^2=0 \quad\Longrightarrow\quad x(1+y^2)=1 \quad\Longrightarrow\quad x=\frac{1}{1+y^2},
$$
$$
(y-1)+yx^2=0 \quad\Longrightarrow\quad y(1+x^2)=1 \quad\Longrightarrow\quad y=\frac{1}{1+x^2}.
$$

If we look for a symmetric critical point with $x=y$, then set $x=y$ in $x=\frac{1}{1+y^2}$:
$$
x=\frac{1}{1+x^2}
\quad\Longrightarrow\quad
x(1+x^2)=1
\quad\Longrightarrow\quad
x^3+x-1=0.
$$

This cubic has a unique positive real root, numerically
$$
x\approx 0.6823278038,
\qquad
\text{so }(x,y)\approx(0.6823278038,;0.6823278038).
$$

---

### (b) Block coordinate descent and computing $P_{30}$

Fix $y=y^*$ and minimize $f$ as a function of $x$ only. The $x$–critical condition derived above gives:
$$
x=\frac{1}{1+(y^*)^2}.
\tag{*}
$$
Similarly, fixing $x=x^*$ and minimizing over $y$ gives:
$$
y=\frac{1}{1+(x^*)^2}.
\tag{**}
$$

**Algorithm (starting from $y_0=0$):**

1. Compute
   $$
   x_0=\frac{1}{1+y_0^2}.
   $$
2. For $k\ge 0$, update
   $$
   y_{k+1}=\frac{1}{1+x_k^2},
   \qquad
   x_{k+1}=\frac{1}{1+y_{k+1}^2}.
   $$
   and define $P_k=(x_k,y_k)$.

With $y_0=0$:
$$
x_0=\frac{1}{1+0}=1
\quad\Rightarrow\quad
P_0=(1,0).
$$
Then
$$
y_1=\frac{1}{1+1^2}=\frac12,
\qquad
x_1=\frac{1}{1+(1/2)^2}=\frac{1}{1+1/4}=\frac45=0.8,
$$
so
$$
P_1=\left(\frac45,\frac12\right).
$$

Continuing this recursion to $k=30$ yields
$$
P_{30}=(x_{30},y_{30})\approx(0.68232780382845,;0.68232780382734).
$$

---

## Problem 27

**Given**
$$
A=\begin{pmatrix}
1&1&0&0\
1&0&1&0\
0&1&0&1\
0&0&1&1
\end{pmatrix}.
$$
(It is easy to check $\operatorname{rank}(A)=3$.)

We show the **nonnegative rank** of $A$ is $4$.

### Key fact: nonnegative factorization $\Rightarrow$ rectangle cover

Assume, for contradiction, that $A$ has nonnegative rank $\le 3$. Then there exist matrices
$$
W\in\mathbb{R}*+^{4\times 3},\qquad H\in\mathbb{R}*+^{3\times 4}
$$
such that
$$
A=WH.
$$
Let $w_i^T$ be row $i$ of $W$ and $h_j$ be column $j$ of $H$. Then
$$
a_{ij}=w_i^T h_j=\sum_{k=1}^3 W_{ik}H_{kj}.
$$
Because everything is nonnegative,
$$
a_{ij}>0
\quad\Longleftrightarrow\quad
\exists k\in{1,2,3}\text{ such that }W_{ik}>0\text{ and }H_{kj}>0.
$$

Define supports:
$$
R(k)={, i\in{1,2,3,4}: W_{ik}>0,},\qquad
C(k)={, j\in{1,2,3,4}: H_{kj}>0,}.
$$
Then for any $(i,j)\in R(k)\times C(k)$ we have $a_{ij}>0$. Hence
$$
{(i,j): a_{ij}=1}\subseteq \bigcup_{k=1}^3 \big(R(k)\times C(k)\big).
$$
Each $R(k)\times C(k)$ is a **combinatorial rectangle** consisting only of $1$’s.

So: **if $\operatorname{rank}_+(A)\le 3$, the $1$’s of $A$ can be covered by 3 all-ones rectangles.**

---

### (a) Rectangles in this matrix

List the $1$-entries of $A$ (using $(\text{row},\text{col})$):
$$
(1,1),(1,2),(2,1),(2,3),(3,2),(3,4),(4,3),(4,4).
$$

Now observe: in this matrix, there is **no** $2\times 2$ all-ones submatrix.
Equivalently, the largest all-ones combinatorial rectangle has size $2$.

Examples of maximal all-ones rectangles (size $2$) are:
$$
{1}\times{1,2},\quad
{2}\times{1,3},\quad
{3}\times{2,4},\quad
{4}\times{3,4},
$$
and also their “transposes” like
$$
{1,2}\times{1},\quad {1,3}\times{2},\quad \text{etc.}
$$

---

### (b) Why nonnegative rank cannot be $3$

There are $8$ ones in $A$.
Each all-ones rectangle contains **at most $2$** ones (since no rectangle larger than size $2$ exists).

Therefore, any cover of the $8$ ones requires at least
$$
\left\lceil \frac{8}{2}\right\rceil =4
$$
rectangles. Hence it is impossible to cover the ones using only $3$ rectangles, so $\operatorname{rank}_+(A)\ge 4$.

On the other hand, we can write $A$ as a sum of $4$ nonnegative rank-1 matrices (one per size-2 rectangle):
$$
A=
\underbrace{e_1\begin{pmatrix}1&1&0&0\end{pmatrix}}*{{1}\times{1,2}}
+
\underbrace{e_2\begin{pmatrix}1&0&1&0\end{pmatrix}}*{{2}\times{1,3}}
+
\underbrace{e_3\begin{pmatrix}0&1&0&1\end{pmatrix}}*{{3}\times{2,4}}
+
\underbrace{e_4\begin{pmatrix}0&0&1&1\end{pmatrix}}*{{4}\times{3,4}},
$$
where $e_i$ are standard basis vectors in $\mathbb{R}^4$. This is a nonnegative factorization with $4$ components, so $\operatorname{rank}_+(A)\le 4$.

Thus
$$
\operatorname{rank}_+(A)=4.
$$

---

## Problem 28

Recall the **nuclear norm**:
$$
|A|**=\sum*{i=1}^r \sigma_i(A),
$$
the sum of the singular values.

We prove $|\cdot|_*$ is a norm.

### (1) Positive definiteness

Singular values satisfy $\sigma_i(A)\ge 0$, so $|A|_*\ge 0$.

If $|A|**=0$, then all $\sigma_i(A)=0$. That implies $A=0$.
Conversely, if $A=0$ then all singular values are $0$ and $|A|**=0$.

So
$$
|A|_*=0 \iff A=0.
$$

### (2) Homogeneity

For scalar $t$,
$$
\sigma_i(tA)=|t|\sigma_i(A),
$$
hence
$$
|tA|**=\sum_i \sigma_i(tA)=\sum_i |t|\sigma_i(A)=|t|\sum_i \sigma_i(A)=|t|,|A|**.
$$

### (3) Triangle inequality

Use the dual characterization (duality with the operator norm $|\cdot|*2$):
$$
|A|**=\max_{|B|_2\le 1}\langle A,B\rangle,
\qquad
\text{where }\langle A,B\rangle=\operatorname{tr}(A^TB).
$$

Then
$$
|A+C|**
=\max*{|B|*2\le 1}\langle A+C,B\rangle
=\max*{|B|*2\le 1}\big(\langle A,B\rangle+\langle C,B\rangle\big).
$$
For every feasible $B$,
$$
\langle A,B\rangle+\langle C,B\rangle
\le \max*{|B|*2\le 1}\langle A,B\rangle
+\max*{|B|*2\le 1}\langle C,B\rangle
=|A|**+|C|_*.
$$
Taking the maximum over $B$ on the left preserves the inequality:
$$
|A+C|**\le |A|**+|C|_*.
$$

Therefore $|\cdot|_*$ satisfies all norm axioms.

---

## Problem 29

Recall: if $\operatorname{dom}(f)$ is convex and the Hessian $\nabla^2 f(x)$ is positive semidefinite for all $x$ in the domain, then $f$ is convex (for $n=1$, this means $f''(x)\ge 0$).

### (a) Show $f(x)=e^{ax}$ is convex for any $a\in\mathbb{R}$

Compute derivatives:
$$
f'(x)=ae^{ax},\qquad f''(x)=a^2 e^{ax}.
$$
Since $e^{ax}>0$ and $a^2\ge 0$,
$$
f''(x)=a^2 e^{ax}\ge 0\quad \forall x.
$$
Hence $e^{ax}$ is convex on $\mathbb{R}$.

### (b) Show $f(x)=\ln x$ is concave on $x>0$

On $(0,\infty)$,
$$
f'(x)=\frac{1}{x},\qquad f''(x)=-\frac{1}{x^2}.
$$
Since $x^2>0$,
$$
f''(x)=-\frac{1}{x^2}<0\quad \forall x>0.
$$
So $\ln x$ is concave on $x>0$ (equivalently $-\ln x$ is convex).

### (c) Show negative entropy $f(x)=x\ln x$ is convex for $x>0$

On $(0,\infty)$,
$$
f(x)=x\ln x,\qquad
f'(x)=\ln x+1,\qquad
f''(x)=\frac{1}{x}.
$$
Since $x>0$,
$$
f''(x)=\frac{1}{x}>0\quad \forall x>0.
$$
Therefore $x\ln x$ is (strictly) convex on $x>0$.

---

## Problem 30

Consider
$$
\min_{x_1,x_2,x_3}; -x_1x_2x_3
\quad\text{s.t.}\quad
x_1+3x_2+6x_3\le 48,;;
x_1\ge 0,;x_2\ge 0,;x_3\ge 0.
$$

This is equivalent to maximizing $x_1x_2x_3$ over the same feasible set.

### KKT setup

Constraints:
$$
g_0(x)=x_1+3x_2+6x_3-48\le 0,\quad
g_1(x)=-x_1\le 0,\quad g_2(x)=-x_2\le 0,\quad g_3(x)=-x_3\le 0.
$$
Lagrangian:
$$
\mathcal{L}(x,\lambda,\mu)=
-x_1x_2x_3
+\lambda(x_1+3x_2+6x_3-48)
-\mu_1x_1-\mu_2x_2-\mu_3x_3,
$$
with $\lambda\ge 0$, $\mu_i\ge 0$.

### Stationarity

Set gradients to zero:
$$
\frac{\partial \mathcal{L}}{\partial x_1}=-x_2x_3+\lambda-\mu_1=0,
$$
$$
\frac{\partial \mathcal{L}}{\partial x_2}=-x_1x_3+3\lambda-\mu_2=0,
$$
$$
\frac{\partial \mathcal{L}}{\partial x_3}=-x_1x_2+6\lambda-\mu_3=0.
$$

At the optimum we will have $x_i>0$ (otherwise the product is $0$ and we can do better), hence by complementary slackness $\mu_i x_i=0$ gives
$$
\mu_1=\mu_2=\mu_3=0.
$$
So
$$
\lambda=x_2x_3,\qquad
3\lambda=x_1x_3,\qquad
6\lambda=x_1x_2.
$$

From $\lambda=x_2x_3$ and $3\lambda=x_1x_3$:
$$
3x_2x_3=x_1x_3 ;\Rightarrow; x_1=3x_2.
$$
From $\lambda=x_2x_3$ and $6\lambda=x_1x_2$:
$$
6x_2x_3=x_1x_2 ;\Rightarrow; x_1=6x_3.
$$
Thus
$$
3x_2=6x_3 ;\Rightarrow; x_2=2x_3.
$$

### Primal feasibility and complementary slackness

Since increasing variables increases the product, the budget constraint is active:
$$
x_1+3x_2+6x_3=48.
$$
Substitute $x_1=6x_3$ and $x_2=2x_3$:
$$
6x_3+3(2x_3)+6x_3=48
;\Rightarrow;
18x_3=48
;\Rightarrow;
x_3=\frac{8}{3}.
$$
Then
$$
x_2=2x_3=\frac{16}{3},\qquad
x_1=6x_3=16.
$$

### Optimal value

$$
\min(-x_1x_2x_3)= -\left(16\cdot\frac{16}{3}\cdot\frac{8}{3}\right)
= -\frac{2048}{9}.
$$

So the KKT solution is
$$
(x_1^*,x_2^*,x_3^*)=\left(16,\frac{16}{3},\frac{8}{3}\right),
\qquad
f^*=-\frac{2048}{9}.
$$

---

## Problem 31

Given
$$
A=
\begin{pmatrix}
1 & 3 & 8 & \square\
3 & 9 & \square & 18\
4 & \square & 32 & \square
\end{pmatrix},
\qquad \text{and }\operatorname{rank}(A)=1.
$$

Rank $1$ means all rows are scalar multiples of a single row.

Let row 1 be
$$
r_1=(1,3,8,a).
$$

Row 2 begins with $3$, so it must be $3r_1$ (since $3=3\cdot 1$). Check the second entry: $9=3\cdot 3$ matches, so this is consistent. Therefore
$$
r_2=3r_1=(3,9,24,3a).
$$
But row 2’s fourth entry is $18$, so $3a=18$, hence
$$
a=6,
\qquad
\text{and the missing (2,3) entry is }24.
$$

Now row 3 begins with $4$, so it must be $4r_1$:
$$
r_3=4r_1=(4,12,32,24).
$$
Thus the missing entries are $12$ (in position (3,2)) and $24$ (in position (3,4)).

So the completed matrix is
$$
A=
\begin{pmatrix}
1 & 3 & 8 & 6\
3 & 9 & 24 & 18\
4 & 12 & 32 & 24
\end{pmatrix}.
$$
