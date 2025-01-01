To break down problem in simpler steps.
Defining a function with the function in its own definition.

$5^{4}= 5 * 5^{3} = 5 * 5 * 5^{2} = 5 * 5 * 5 * 5^{1} = 5 * 5 * 5 * 5 * 5 * 5^{0}$

- move one step at a time 
- call a smaller version of the problem in conjugation to the step 
- Know where to stop! (Base case)

```
public static void int factorial(int n){
	if (n==1)     -> Base cases
		return 1;
	else
		return n * factorial(n-1);
}
```

`factorial(3)`
![[Computer Science/Intro to CS/attachments/Drawing 24-10-22-11-07-25]]
The entire point of recursion is to avoid thinking about loops as long as you can break a problem down into a similar but smaller problem.

**Notice how we could have written a loop for factorials too. But this is a much faster way to Code.**

**It is however (usually) computationally more expensive since the function stack call is being piled up and then telescoped down.**
It takes up too much space in the stack!

(Except: The Tower of Babel)

So it's usually a trade of between coding time and readability & computational efficiency.
---


```
public static int Fib(int n){
	if (n==1||n==2) -> if looking for the 1st or 2nd Fibonacci number, return 1
		return 1;
	return Fib(n-1) + Fib(n-2); -> nth term is (n-1)th term + (n-2)th term
	-> i.e. nth term is sum of the 2 numbers before it.
}
```
![[Computer Science/Intro to CS/attachments/Drawing 24-10-22-11-22-46]]

This is super expensive! You're doing so many things again and again.
So recursion may be cleaner than loops but it is, again, usually very expensive.

The expense is the `memory in function call stack` vs `memory in stack for variables`
For one particular case of the Tower of Babel, the problem is complex enough that we would have to define many more variables with the iterative loopy way that what we would use for function call stacks with a recursive definition. It is also more readable.

---
### Any problem can be turned into a recursion problem (almost)
"We have bunnies standing in a line, numbered 1,2,... The odd bunnies (1,3,...) have normal 2 ears. The even bunnies (2,4,...) we'll say have 3 ears, because they each have a raised foot. Recursively return the number of ears in the bunny line 1,2...n (without loops or multiplication)"

```
public class BunnyEars
public static int bunnyEarsInLine(int n) {
	if (n==0) -> Note How The Base Case Should Come First To Avoid Errors
		return 0;
	else if (n%2==0)
		return 3 + bunnyEarsInLine(n-1);
	else
		return 2 + bunnyEarsInLine(n-1);
}
public static void main{
	n = StdIn.readInt();
	StdOut.println(bunnyEarsInLine(n));
}


-> Base case:
	go through all the bunnies and then return 0 at end

-> General Case 1:
	even # -> 3 + sum of ears in first (n-1) bunnies

-> General Case 2:
	odd # -> 2 + sum of ears in first (n-1) bunnies
```