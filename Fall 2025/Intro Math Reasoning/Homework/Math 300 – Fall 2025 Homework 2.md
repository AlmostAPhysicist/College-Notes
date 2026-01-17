## 1.
### Given:

- **Sets**: $A$, $B$, $C$
- **Assumptions**:
    - $A \subseteq B$, which translates to $\forall x \in A, x \in B$ (denoted as $p_1$)
    - $B \subseteq C$, which translates to $\forall x \in B, x \in C$ (denoted as $p_2$)
    - $C \subseteq A$, which translates to $\forall x \in C, x \in A$ (denoted as $p_3$)

### Need to Prove:

- $A = B$ and $B = C$
    - For $A = B$, we need to show $A \subseteq B$ and $B \subseteq A$, i.e., $\forall x \in A, x \in B$ and $\forall x \in B, x \in A$
    - For $B = C$, we need to show $B \subseteq C$ and $C \subseteq B$, i.e., $\forall x \in B, x \in C$ and $\forall x \in C, x \in B$

### Proof:
Since $A \subseteq B$ and $B \subseteq C$ are already within our assumption, we just need to prove that $B \subseteq A$ and $C \subseteq B$

### 1. Prove $A = B$

- $A \subseteq B$:
    - This is given by assumption $p_1$: $\forall x \in A, x \in B$.
- $B \subseteq A$:
    - Let $x \in B$.
    - By $p_2$ ($B \subseteq C$), we have $x \in C$.
    - By $p_3$ ($C \subseteq A$), since $x \in C$, it follows that $x \in A$.
    - Thus, $\forall x \in B, x \in A$, so $B \subseteq A$.
Since $A \subseteq B$ and $B \subseteq A$, it follows that $A = B$.

### 2. Prove $B = C$

- $B \subseteq C$:
    - This is given by assumption $p_2$: $\forall x \in B, x \in C$.
- $C \subseteq B$:
    - Let $x \in C$.
    - By $p_3$ ($C \subseteq A$), we have $x \in A$.
    - By $p_1$ ($A \subseteq B$), since $x \in A$, it follows that $x \in B$.
    - Thus, $\forall x \in C, x \in B$, so $C \subseteq B$.
Since $B \subseteq C$ and $C \subseteq B$, it follows that $B = C$.

$\therefore$ we have proved that $A=B$ and $B=C$ (which means $A=C$)

---

## 2.
### a)
To prove:
$\boxed{(A \cup B) \cap C \subseteq A \cup (B \cap C)}$

I will let the set $(A \cup B) \cap C = P$ and $A \cup (B \cap C) = Q$

That means I need to prove $\forall x \in P, x \in Q$

- Let $x$ be an element in $P$ ($x \in P$)

$\implies (x \in (A \cup B))$ and $(x \in C)$

Then $x$ can be in either $A$ or $B$ or both (with would be covered already in both the cases before).

1. Case 1. $x \in A$
Then it follows that $x \in A \cup (B \cap C)$

2. Case 2. $x \in B$
Since $x$ is also in $C$, it follows that $x \in (B \cap C)$.
$\implies x \in A \cup (B \cap C)$

Therefore, in all the cases that $x \in P, x \in Q$

$\therefore (A \cup B) \cap C \subseteq A \cup (B \cap C)$


### b)
$A = \set{1,2,3}$
$B = \set{2,3,4}$
$C = \set{3,4,5}$

Here, $P = (A \cup B) \cap C = \set{3,4}$ and $Q = A \cup (B \cap C) = \set{1,2,3,4}$
Clearly, $P \neq Q$

---

## **3.**  
### To prove: $(A - B)^c \supseteq A^c - B^c$.
Let $x \in A^c - B^c$. This means
- $x \in A^c$, and
- $x \notin B^c$.

The second condition $x \notin B^c$ means $x \in B$. So overall $x \in A^c$ and $x \in B$, which means $x \in B - A$.

Also, if we notice,
$$(A - B)^c = (A \cap B^c)^c = A^c \cup B.$$
Since $x \in B$, we have $x \in A^c \cup B$. So $x \in (A-B)^c$. Therefore every element of $A^c-B^c$ lies in $(A-B)^c$, and the containment is true.

#### (b) Example where the containment is proper:  
Let the universe be $U=\{1,2,3\}$, and take
$$A=\{1,2\}, \quad B=\{2,3\}.$$
Then
$$A-B=\{1\}, \quad (A-B)^c=\{2,3\}.$$
Also
$$A^c=\{3\}, \quad B^c=\{1\}, \quad A^c-B^c=\{3\}.$$
So $A^c-B^c=\{3\}$ while $(A-B)^c=\{2,3\}$. They are not equal, so the containment is proper.

#### (c) When does equality hold in part (a)?  
We have
$$(A-B)^c = A^c \cup B, \quad A^c-B^c = A^c \cap B.$$
So equality means
$$A^c \cup B = A^c \cap B.$$
This only happens if $A^c = B$. In other words, equality holds exactly when $A$ and $B$ are complements of each other.

---

## **4.**  
For a real number $a$, let $\mathbb{Q}_{\le a} = \{r \in \mathbb{Q}: r \le a\}$.  
Let $a$ and $b$ be rational numbers. To prove:
$$\mathbb{Q}_{\le a} \subseteq \mathbb{Q}_{\le b} \quad \text{iff} \quad a \le b.$$

**(If direction):** Assume $a \le b$. Let $r \in \mathbb{Q}_{\le a}$. Then $r \le a$. Since $a \le b$, it follows that $r \le b$. So $r \in \mathbb{Q}_{\le b}$. Hence, $\mathbb{Q}_{\le a} \subseteq \mathbb{Q}_{\le b}$.

**(Only if direction):** Assume $\mathbb{Q}_{\le a} \subseteq \mathbb{Q}_{\le b}$. Suppose $a > b$. Since $a$ is rational, $a \in \mathbb{Q}_{\le a}$. Then by the subset relation, $a \in \mathbb{Q}_{\le b}$, which would mean $a \le b$. This is a contradiction. So $a \le b$ must hold.

Together these give the equivalence.

---

## **5. (Optional)**  
Let me take arbitrary real numbers $a$ and $b$. Defining $\mathbb{Q}_{\le a}=\{r \in \mathbb{Q} : r \le a\}$, I need to prove:
$$\mathbb{Q}_{\le a} \subseteq \mathbb{Q}_{\le b} \quad \text{iff} \quad a \le b.$$

The “if” part is the same as in problem 4.  
For the “only if” part, assume $\mathbb{Q}_{\le a} \subseteq \mathbb{Q}_{\le b}$. Suppose $a > b$. Because there is a rational number between any two reals (as stated in the question), there exists $r \in \mathbb{Q}$ with $b < r \le a$. Then $r \in \mathbb{Q}_{\le a}$ but $r \notin \mathbb{Q}_{\le b}$. This contradicts the subset relation ($\mathbb{Q}_{\le a} \nsubseteq \mathbb{Q}_{\le b}$). So $a \le b$ must hold.

Therefore the statement is true for real $a, b$ as well.
