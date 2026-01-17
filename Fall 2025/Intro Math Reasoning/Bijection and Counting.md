Really, we have a notion of what it means to have a size of a certain set.
(Or at least we like to think that). And we understand the general notion of numbers used to define such sizes. 
Really, which have several different definition, but a useful one can be to flip this notion on it's head.

Essentially, and the notion Equivalence or equinumeral, or "having the same size” is what we use.

>Even without defining formally, what size is, quite paradoxically, we define numbers themselves in that respect.

Anyways, shoving away the philosophy, we say two sets have the same size, if and only if there exists a bijection from $A \to B$.

>The notion of bijection, again, is that you miss neither of the elements in $A$ or $B$ when defining a mapping, and that each element has only one mapping and pre-mapping.

Using this notion, the idea of counting naturally pops out. Any two sets with the same size would have a bijection between them.

And really, you can reason nicely that 
>Given $A,B,C$ $\exists f : A \to B$ and $\exists g : B \to C$ where both $f$ and $g$ are bijections, then there ALSO $\exists h : A \to C$ where $h$ is bijective.
>
>Again, it is very hard to prove that there exists something.
>And really there is no one fit all way to prove this.
>One may be that you can prove there it can't be otherwise.
>But another is that somehow, you guess such an object and then there is no doubt about existence because you have one in hand.
>And of course, in our case, $h:=g \circ f$ $h:A \to C$ IS a bijection. and so there we have it.

Anyway, NOW that we can have sets having the same sizes (and really comparable sizes), we can now define our own set to represent a particular size...

So to represent the size... the "muchness" of something, we define a set that is equivalent (i.e. has the same number of elements) as itself.

That is really how we define numbers.

So the number $0$ would be define as a set with no elements $0:=\phi$.
$1$ would be defined as a set with $1$ element inside it, which conveniently can itself be $1:=\set{0}$
$2:= \set{0, 1}$
and so one.

So $5$ is just a notion that we can define as being the face of a set that is equivalent to all sets with the same number/muchness as itself. And therefore, we can COUNT!

---

And this can go on forever, and we can to a "countable infinity".

---

Anyways... in case of Infinite sets by the way, we flip the observation about bijection and counting and say the sets are comparable by size equality if and only if there exists a bijection.

Again, it is paradoxical, since there really is no notion of an actual number, nor a size. But whatever this quantity is, we can now compare it, given we check a bunch of mappings.

---

>A countable infinity as defined as the smallest size an infinite set can possibly be


---

- Does a bijection from $\mathbb{N} \to \mathbb{Z}$?
And really, it means does there exist a **sequence of integers** such that you cover all integers and use an integer once and only once.

$\set{f_{1}, f_{2}, f_{3}, f_{n}, \dots}$
(does there exist a permutation of the integers that fits this setting?)

Well, after some thought, you can say $\set{0, -1, 1, -2, 2, \dots}$

So yes!

Both these sets, since this is a bijective mapping, must have the same size. And really let that sink in! We see intuitively that they don't. Since the integers contain, in some sense, twice as many numbers as the naturals. But it is really, (perhaps) a point of definitions, and our primitive counting capabilities for the naturals that are different from the instincts, at least in the setting of $ZFT$ that we need to talk about infinite sets.


>Every infinite set


