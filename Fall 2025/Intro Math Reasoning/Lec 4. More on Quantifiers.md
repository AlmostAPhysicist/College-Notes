## Restricted Quantifiers 
>(Quantifiers that are bound to conditionals either true or false)

$(\exists x \in A)p(x)$ simply means $(\exists x) [x \in A \text{ and } p(x)]$

Similarly, $(\forall x \in A)p(x)$ is **equivalent** to $(\forall x)[\text{if } x \in A, \text{ then } p(x)]$. 

But you get something unintended here, since this conditional would be true for $x \notin A$. In the initial statement, though, usually doesn't anything about elements that are in sets other than $A$.

Conceptually, you should really think about it as an adjective… that $(\forall x \in A)p(x)$ means that you are only talking about $x$ with the adjective $A$ that describes what kind of $x$ it is, and THEN you use that $x$ to evaluate $p(x)$. So usually you don't care about $x \notin A$ cases and just throw away the truth value of $p(x)$.

But because $(\forall x \in A)p(x) \equiv (\forall x)[\text{if } x \in A, \text{ then } p(x)]$, actually, for $\forall x \notin A$, you get the entire conditional to be true anyway. 

And this really comes down to conventions. Because we need to have a harmony in the entire mathematical structure, we get these behaviors that sometimes (like what we had previously seen in $if$ conditionals, that are not really how we use such language and contexts in the real world conversations of ours.)

>Also, note, this does NOT mean $p(x)$ is true for all $x \notin A$. Instead, the ENTIRE statement itself evaluates to true. And this is what makes all the difference.w



