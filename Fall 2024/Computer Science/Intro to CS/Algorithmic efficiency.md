## Memory 
It is possible to count how much memory might be used by a program.
```
public static int[] reverse(int[] a){ -> +n for a.length
	int n = a.length; -> +1
	for (int i=0; i<a.length/2;i++){ -> a.length/2 +1
		int tmp = a[i]; -> +1
		a[i] = a[n-i-1];
		a[n-i-1];
	}
}

n + 3 integers in the program
assuming we have 1 integer taking 4 bytes, total memory is 4n+12
```

## Running Time
Question:
Can we write down an accurate formula for the running of a computer program?

We first thought the answer is No.

D.E. Knuth, 1968-present came up with a particular method to predict fairly accurately the running time of a program.
- Find operation counts for different types of operations
- Find cost of each operation

Essentially, tally all the number of times a certain operation is happening and then multiply that with the time that operation would take, summing up all this procuts.

You get some function in $N$ of input size.

#### Tilde notation
Use only the fastest growing term.
Ignore the slower growing terms.

#### Big-O Complexity 
Tilde notation but drop the coefficient.

Slowest to fastest functions 
$n^{n}> n! > 2^{n} > n^{c} \space (c>1)> nlog(n) > log(n) > c$

For a time complexity of say $4n^{3}+2n + 5ln(n)$
We say $\sim 4n^{3}$ (Tilde $4n^{3}$, i.e. the time complexity can be approximated to the highest order term of the complexity)
We can also say $O(n^{3})$ i.e. it has a Big-O complexity of the highest order function in the time complexity.

