$$A \neq \phi, \, R \,\text{is an equivalence}\,  \underline{\text{on}}\,A$$
- $(\forall x \in A) x/R = [x]_{R}= \set{y \in A: xRy} \neq \phi$
(In an equivalence relation, the equivalence class of each element is non empty (since it will have at least itself due to reflexivity))

- $(\forall x,y \in A)[x/R = y/R \quad or\quad x/R \cap y/R = \phi]$
(In an equivalence relation, the equivalence classes of different elements are either the SAME (due to reflexivity and transitivity) OR are DISJOINT (are totally separate)

Essentially, if you have any element common, you end up tracing the entirely of the other set… 
>*you just need one invader to conquer them all*

)

- $\underset{x \in A}{\cup} x/R=A$
(Since you have at least the element itself in an equivalence class of an element, you have the entire set reconstructed by the union of all equivalence classes)

---
Proof for 3.

- Part I: proving $LHS \subseteq RHS$
<u>Need:</u> $(\forall t \in LHS) t \in RHS$
<u>Suppose</u> $t \in LHS$

Since $t \in \underset{x \in A}{\cup} x/R, \text{so}\, \exists x \in A : t \in x/R$
(So there must be some element of $A$ in whose equivalence class, $t$ must exist)

>Notice: We still haven't proved the property of $x/R$ or $[x]_{R}$ (Equivalence classes)
> It is only now that I use their property to finally complete this part of the proof 

Since $(\forall x \in A) x/R\subseteq A$
$t \in x/R \implies t \in A$

- Part II: proving $RHS \subseteq LHS$
that is, $A \subseteq \underset{x \in A}{ \cup} x/R$
that is, $(\forall a \in A) a \in \underset{x \in A}{ \cup} x/R$
that is, we <u>Need to prove</u> $(\forall a \in A) \exists x \in A: a \in x/R$
(Formally, I would have to say <u>Suppose</u> $a \in A$)
NOW we use the property of the Relation and Equivalence classes 

And we know that due to the relation being equivalent, it is a reflexive relation

> Showing existence can be typically done by guess and verify

thus Let $x = a$ (Guess)
Indeed, $a \in a/R$ by reflexivity

Thus, there is an $(\forall a \in A) \exists x \in A: a \in x/R$

Hence, we have proved now $\underset{x \in A}{\cup} x/R=A$.

---
>Notice, that the proof structure is not really reliant on the specific problem in hand. You have to squint your eyes at first and look at the general structure of your problem, work with that, and as you dig deeper into the proof, only then do you reveal more properties of your question and use those properties.
>The general layout is the same.
>Again, we are here to learn this way of thinking and proving, not solving this specific problem in hand.

---
But wait, for properties $1$ and $3$, all we used is Reflexivity. So why are we imposing transitivity and symmetry?

Its for the more nuanced property $2$

- Proof of $(\forall x,y \in A)[x/R = y/R \quad or\quad x/R \cap y/R = \phi]$

>It has often been easier for me the solve the problem in an indirect way, i.e. proving by contradiction.
>You don't have to have the contradiction of some kind, a contradiction of any kind would do it.
>You just assume your statement is false, so assume the negation of the entire statement, and showing there is a (some) contradiction

So we would be proving this by contradiction.

<u>Structure:</u>
$P:(\forall x,y \in A) [\dots]$

Proof structure:
<u>Assume</u>, for contradiction, that
(Negation of $(\forall x,y \in A)$ and 
negating, then looking at the structure of $[\dots]$  the latter is, at the very top level $[\dots \,OR\, \dots]$)
So the negation would be 

$(\exists x,y \in A)[(x/R \neq y/R) \quad AND \quad (x/R \cap y/R \neq \phi)]$

So we <u>Assume</u> this (fake) La La Land world of ours!

>The beauty of the human mind is that we can create worlds that don't exist, even if they are temporary, that lets us talk more about our own.

We now need to see if this world has some trouble and contradiction.

![[Intro Math Reasoning/attachments/Drawing 25-10-27-09-21-44|100%]]

Formalizing the picture,
$(\exists x,y \in A)\exists c \in A: c \in x/R, \, c \in y/R$

(i.e., for any two equivalence classes, there exists an element in common)

> The actual statement of the theorem is that 
> If $xRy, \text{then}\, x/R=y/R$
> If $x \not R y, \text{then}\, x/R \cap x/R = \phi$
> This is a stronger statement since it doesn't just state either is true (since x and y can either be related or not), but tells you what conditions imply what equality.
> We are however, going to assume that using cases.

- Case I: $xRy$
Then, <u>Need to prove</u> $x/R=y/R$

Suppose $t \in x/R$, that is, $xRt$
Need: $t \in y/R$, that is $yRt$
We know through symmetry, $xRy \implies yRx$, and we assumed $xRt$
$yRx \, \& \, xRt \implies yRt$ (by transitivity)

Therefore, we have proved the first Case.

- Case II: $x \not R y$
We would use a contradiction for this part.
So we <u>Assume</u> $x \not R y$ and $x/R \cap y/R \neq \phi$
the second equivalence is the same as $(\exists x,y \in A)\exists c \in A: c \in x/R, \, c \in y/R$

Since $c \in x/R$, we know $xRc$
Since $c \in y/R$, we know $yRc$

by symmetry, $yRc \implies cRy$
Hence, by transitivity, $xRy$
(which contradicts our assumption)

Hence, proved.

---

>Komlós Preaching:
>Do not waste time in writing properties of what you assume.
>Break down your needs and the properties will pop out on their own.
><u>Focus on what you need, not what you have.</u>

---

