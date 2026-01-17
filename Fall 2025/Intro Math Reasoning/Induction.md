## Principle of Mathematical Induction
Proving $(\forall n \in \mathbb{N}) p(x) \text{ by PMI}$

>PMI: Principle of Mathematical Induction

<u>BASE CASE</u> ($n=1$) (Verify)
<u>INDUCTION STEP</u>
- <u>Suppose</u> $k \in \mathbb{N}$ (is given arbitrarily)
- <u>Assume</u> $p(k) \text{ [Holds]}$ (Induction Hypothesis)
- <u>Need</u> to prove $p(k+1)$

Hence, by the PMI, $p(u)$ holds for <u>all</u> $n \in \mathbb{N}$

>https://en.wikipedia.org/wiki/Mathematical_induction
>Pretty Interesting Wikipedia page to read, with a little bit of history, formalism, weak and strong induction, examples, and some philosophy. 

---

><u>Verify</u> $p(1)$
>$p(2)?T/F$ -> y
>b/c $P(1) \implies P(2)$
>Since $p(2)$ hence $p(3)$


---
## Principle of Complete Induction
>Essentially, it is similar to “weak” induction of mathematical induction that is "not complete", but you **don't just assume** the $k\small th$ instance to **prove $k+1 \small th$** instance, but you assume **everything up to and including the $k \small th$ instance**.

1. Every positive integer $s$ has a unique successor in $\mathbb{N}$ (named $s+1$)
2. Every positive integer $s>1$ has a unique predecessor in $\mathbb{N}$ (named $s+1$) $$(\forall s \in \mathbb{N}) s \neq 1 \implies (\exists! k \in \mathbb{N})[s = k+1]$$

**Principle of Complete Induction (PCI)**

Let $S \subseteq \mathbb{N}$ be a set of natural numbers.

We will say that $S$ is <u><b>strongly inductive</b></u> (for lack of a better word) if


---

> Note, since you have all elements $n-1, n-2 \ldots$ to prove $n \small th$ iteration, or even define it, you can use any of them!
> 
For example, the Fibonacci sequence, of course, you would know about it, can be defined as $F_{n} = F_{n-1} + F_{n-2} \quad \text{for all }n \geq3$
Again, $n=1$ and $n=2$ instance can not be defined this way since they don't have any previous element. 
These would then be our base case that we Suppose or Define arbitrarily

>Really, it is very analogous to linear differential equations… it defines how fast the Fibonacci Sequence grows as you may know, you can look at the long term behavior of the sequence by having a synthetic expression that closely matches the behavior for a certain domain. For example, in the limiting case, $F_{n} \approx (\frac{1+\sqrt{5}}{2})^{n} = \phi^{n}$ where $\phi$ is the golden ratio.
> You can have different or extended synthetic solutions for larger domains.

---

>https://math.stackexchange.com/questions/228863/recursive-vs-inductive-definition
>There has been some ink spilt to discuss induction vs recursion. They are similar ideas, one typically used in context of mathematical proofs, and other used for programmatic definitions.


---

Proving that for any positive integer $n$, the Fibonacci numbers $F_n$ and $F_{n+1}$ are relative primes (aka coprime), that is, their greatest common divisor is $1$.

**Proof by Induction**

<u>Base Case</u> ($n=1$): **Verify** directly that $F_{1}$ and $F_{2}$ are coprime.
Indeed, they are since $gcd(1,1)=1$

<u>Induction Step</u>
- Suppose $k \in \mathbb{N}$
- Assume $F_{k}$ and $F_{k+1}$ are coprime (induction hypothesis)
- Need to prove that $F_{k+1}$ and $F_{k+2}$ are coprime.

We can carry out the induction step by proof by contradiction.
**Proof:**
<u>Assume</u>, for contradiction, that there exists a positive integer $d>1$ such that $d|F_{k+1}$ and $d|F_{k+2}$
which, in other words means $\exists q_{1}, q_{2} \in \mathbb{Z}:F_{k+1}=q_{1}d \land F_{k+2}=q_{2}d$

Then, since $F_{k} = F_{k+2} - F_{k+1}$, $F_{k}=(q_{2}-q_{1})d$

But that means that both $F_{k}$ and $F_{k+1}$ are divisible by the number $d$, which contradicts our assumption!

Hence, proved by contradiction that for our assumption $(\forall k \in \mathbb{N})$ $F_{k}$ and $F_{k+1}$ are coprime, we proved that $F_{k+2}$ is coprime with $F_{k+1}$.

Hence, we also proved by induction that for any positive integer $n$, Fibonacci numbers $F_{n}$ and $F_{n+1}$ are coprime.

---
