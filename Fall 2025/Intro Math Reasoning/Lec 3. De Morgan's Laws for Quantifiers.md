## Quantifiers 
>bound a dummy variable within a predicate, to potentially turn it into a proposition, with a certain meaning

Let $p$ be a predicate over a universe $U$.

- $(\forall x) p(x)$ (equals true) denotes a proposition which is true $\iff$ $p(x)$ is true <u>for all</u> $x \in U$, meaning that the truth set of the proposition is $\set{x \in U : p(x)} = U$
		(you might say that in this universe, $p(x)$ is a tautology $\forall x \in U$)
- $(\exists x) p(x)$ denotes a proposition that claims that there do exist (at least one), within our universe $U$ for which, the predicate $p(x)$ is true

>Note: Given a proposition $P$, on its own, is a claim that the proposition is TRUE 
>You don't need to explicitly state $P = true$ for the claim. The proposition itself has a claim, inherently.
>(Sort of like in programming, `if x: something` assumes $x=true$ is a claim for a variable x to be true)
>Therefore, $(\forall x) \, p(x)$ is a claim already that the predicate, turning into a proposition for the `for all` operator, bounding $x$, is true.


### De Morgan's Laws for Quantifiers.

- $\sim (\forall x) p(x) \equiv (\exists x) \sim p(x)$
- $\sim (\exists x) p(x) \equiv (\forall x) \sim p(x)$

---
#### Examples

let $\cases{\text{P is the set of all people} \\ \text{S is a set of all the shoes} \\ \text{for } x \in P, y \in S} \qquad \\ \text{p(x,y) is True if y fits x}$

**(Order of Quantifiers Matters.
$, x,y \in \mathbb{N}$ is nonsense, you must define before your predicate $\forall x,y \in \mathbb{N}$ or $\exists x,y \in \mathbb{N}$)**

You can make several statements using $\exists$ and $\forall$ here that you can try.

---
	a) A natural number a *divides* the natural number b ($a|b$)
	Meaning that "There exists an integer $q \in \mathbb{N}$ such that $b = qa$"
	(in short: $(\exists q \in \mathbb{Z})b = qa$)
		Do NOT describe $a|b$ as "b over a is an integer"
			because divisibility is about multiplication, NOT division!

---
	b) A natural number $n>1$ is **prime** 
		$(\underline{\forall} a,b \in \mathbb{N})(\text{if [n=ab], *then* [a = 1 or b = 1]})\quad \{P \to Q\}$
	c) A natural number $n>1$ is **composite** 
		$\big( \exists a,b \in \mathbb{N} \; (n = ab \;\wedge\; a \neq 1 \;\wedge\; b \neq 1) \big) \;\lor\; ( P \land (\sim Q))$

---


	










