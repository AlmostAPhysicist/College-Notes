- Conditional Sentence 
#definition Let $P$ and $Q$ be two propositions, then $P \to Q$ is a conditional statement (if $P$ then $Q$)
>The only way a promise is broken is IF the condition is met AND the condition is not met.

- Biconditional 
#definition The proposition $P \iff Q$ (or $P$) us read ”$P$ if and only if $Q$”.


---
## De Morgan's Laws 
$\sim (P) = \text{it is not the case that P}$ (by definition)

- $\sim (P \land Q) \equiv (\sim P) \lor (\sim Q)$
	- Thing about it this way… $P \land Q$ is false when at least one of them is false, which means the not of the entire thing would be true if either one of them is false. 
- $\sim (P \lor Q) \equiv (\sim P) \land (\sim Q)$
	- So essentially, for a logical operator, the $\sim$ (NOT) operator distributes BUT you swap OR ($\lor$) to AND ($\land$) and vice verse 
- $\sim (P \to Q) \equiv P \land (\sim Q)$
	- Which really repeats that the only way a promise can be false, and therefore the NOT is TRUE is if the condition $P$ is true AND the condition is false.
	- Either $P$ is false, and we don't CARE about $Q$ OR $Q$ is true, and we don't CARE about $P$.
		- $\implies P \to Q \equiv (\sim P) \lor Q$

>Note, you don't always have to have a big description of why the equivalency should make sense. Since these are all just propositions, if their truth tables are the same, they are equivalent.


---
## Tautology and Contradictions

A ***tautology*** is a propositional form that is always true.
Ex: $\sim (\sim P) \equiv P$ or $\sim (\sim P) \iff P$
	\[Something\] is chalk or not a chalk
	$(P \to Q) \lor (Q \to P)$
		Again, talking about implication is not talking about causality, so an unrelated proposition can be combined with another unrelated proposition in an "if" conditional

A ***contradiction*** is a propositional form that is always false.
Ex: \[Something\] is a chalk AND not a chalk at the same time.


---

“If a function is bounded then it is a monotone increasing function” is actually NOT a proposition.

The reason being, the “function” is not really defined. In fact, in mathematical terms, whether it can take any value or not has to also be specifically stated.

So before the statement, you MUST add either 
- $f(x) = \text{some specific function like } x^{2}$
- $\forall f$ (which is really what "a" means but doesn't say it in strict mathematical terms, since it is not what the “a” would always mean)
- $\exists f$

Adding these values to the variable $f$ is what would make this a valid statement to be considered a proposition. Before bounding the free variable, it is a predicate.

---

## Variables 
Most mathematical statements use variables often denoted by a single letter. Some variables are bound by certain operations (such as summation, product, limit, integral, union, intersection), or by a quantifier ($\forall$ or $\exists$). They are also used in set notations.

Such variables are called **bound variables** or **dummy variables**. All others are called **free variables**.

Examples:

- $\sum_{k=1}^{n}k^{2}$
	- k is a bound variable/dummy variable.
		- really, the way to think about it is, you can replace $k$ with variable. $k$ doesn't hold any unique value.
		- If you actually stop being lazy and write things out, instead of condensely writing the expression with temporary variables, you would see no variable $k$ in the expression $1^{2} + 2^{2} + \dots + 10^{2}$
		- $n$ on the other hand, is not known by us yet, so possibly **defined** earlier, and therefore, can not be replaced arbitrarily by us to some other variable. ($n$ would be a free variable here)
- $\frac{1}{\sqrt{2\pi}}\int^{\infty}_{-\infty}e^{\frac{-x^{2}}{2}\,dx}$
	- again, you could replace it by a stupid happy face :) and symbolically, it doesn't make a difference.

So, from what I understand until now, any variable that has come from “outside” the expression in consideration, things are free variables.

---

>A **predicate** (or **open statement**) is essentially a statement with some undefined free variables, which when bound, can turn the statement into a proposition.


$x^{2} + y^{2} = 1 \, \forall \, x,y \in \mathbb{R}$ is a valid predicate. Meaning, the exact $x$ and $y$ is NOT yet defined, which attributes a truth value to the statement. But you can find the SET of quantities for which you CAN attribute a truth value to the statement.
The set of values that attribute the **true** value to the predicate of such type would be the **truth set** of the predicate.

For a predicate $P$ with free variables $v_{1}, v_{2}$, $\set{(v_{1}, v_{2}): P}$ would be the truth set of $P$

Again, like propositions that are equivalent for the same truth tables, predicates are equivalent for the same truth set.

Again, often, you really fill out or imagine a universe of discord in mind, i.e. assume, based on the context of your discussion what sets are we talking about. ($\mathbb{R}$ may often be understood without explicitly saying that.)

---
