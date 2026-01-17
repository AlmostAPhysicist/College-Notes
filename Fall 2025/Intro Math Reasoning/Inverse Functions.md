2 functions are same if 
- They have the same Domain (the outputs are comparable... otherwise one has outputs and other doesn't for particular inputs, how do we even compare the outputs?)
- Their outputs must be the same for all inputs in the Domain 

---

a function $g$ is the inverse of a function $f$ if "$g$ undoes $f$”.

$g(f(x))=x$ AND $f(g(x))=x$
i.e., $g \circ f = I(x) = f \circ g$

Typically, you would define inverses by saying 
>Let $A$ and $B$ be nonempty sets, and let $f:A \to B$ and $g:B \to A$ be functions.
>We say $g$ is **an** inverse of $f$, if $$g \circ f = I_{A} \quad \text{AND} \quad f \circ g = I_{B}$$i.e. the function $g \circ f$ is the same function as $I_{A}$ (again, they are both functions) and so they share the same domain, and they have the same outputs for all the inputs.
>and the same goes for $f \circ g = I_{B}$
The functions **mutually undo each other**.
So the inverses come in pairs.
(Which is why Matrices that don't have a partner in the inverse couple are called singular)
Sometimes this is called a **two-sided inverse** (sometimes, one can include one-sided inverse in their definition of an inverse so it's really subjective)
> $$(\forall x \in A) g(f(x)) = x \quad \text{AND} \quad (\forall y \in B) f(g(x)) = y$$

Also note, that the definition includes that $g$ is **an** inverse of $f$. It turns out that IF it exists, it is **unique**.
But regardless, whether $f$ is **invertible** or not and by a unique function or not, is **not part of the definition of an inverse function**.

---
>- **[Picard's little theorem](https://www.google.com/search?q=Picard%27s+little+theorem&oq=every+complex+function+takes+and+accepts+all+values+maybe+except+one&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQLhhA0gEJMTUwMzVqMGoxqAIIsAIB8QUoBjit412rIA&sourceid=chrome&ie=UTF-8&mstk=AUtExfBYL1O5ullxKmAuC4TU3sn9H5gkyeQuJUOTiyQKPAlAAqZCvVLAyKo0_yZ5SIz28DBN2c-DfZ5i9qllcOkCLaZV-rA7orEed25Wtc9zQkjC23e7htZiGhI9ydR0Bjs_lmx5ED7QXy_w6e3V2ON1a67oKtf4UuJBldJlDSCYnN_hOp0&csui=3&ved=2ahUKEwid6-Cdj6SRAxV0hIkEHZuIOcEQgK4QegQIAxAB):** For a non-constant entire function, it will omit at most one complex number from its range.
>i.e. every reasonable complex number takes basically every complex number and/or outputs every number except perhaps one.

---

If, for a function $f$, **if is invertible IF** there exists at least one inverse, i.e. there exists a function $g:B \to A$ that satisfies our above definition of an inverse.

>It's not a very useful definition no its own, since we would have to exhaust an infinite list of functions to check whether it satisfies the definition of invertibility and so to check if a function $f$ is invertible or not, we would have to spend an infinite time.

So a more internal, useful criterion on defining if a function is invertible or not, which is that 
>**$f$ is invertible if and only if it is one-to-one and onto (i.e., it is bijective)**

---
To find/construct an inverse of a function, you essentially swap the $x$ and $y$ so essentially, that is equivalent to keeping the curve the same and swapping the labelling of two of your axes when defining them.
But that's equivalent to just flipping the curve and keeping the axes labels the same.
>inverse curve for $y=x^{2}$ is $x=y^{2}$, which physically is the mirror of the first curve around $y=x$ line.

---

>for inputs $x$ and outputs $y$ for a function $f:A \to B$ i.e., $y \in B$ and $x \in A$.
>Then $f$ is **one-one** when $y$ has **at most $1$** element it maps back to in the Domain
>Then $f$ is **onto** when $y$ has **at least $1$** element it maps back to in the Domain 
>The bijection then is this goldilocks zone where $y$ maps back to **exactly** one, unique $x$ in the Domain.


