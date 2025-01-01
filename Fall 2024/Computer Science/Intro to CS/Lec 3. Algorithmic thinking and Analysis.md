You can think in terms of code or even flow charts…
Just think through and run what each condition in an algorithm does.

## Counting # of Operations 
- READ → 1 operations
- COMPUTE → 1 operations
- ADD → 1 operations
- SUBTRACT → 1 operations
- DISPLAY → 1 operations
- SET → 1 operations
- IF → Total Number of comparisons
- WHILE → DEPENDS... Total number of Loops & Total Operations in each loop.

```
READ a -> 1 operation 
READ b -> 1 operation 

IF (a>b) THEN  -> 1 operation 
	DISPLAY a -> 1 operation (possible) 
ELSE 
	DISPLAY b -> 1 operation (possible)

(last 2 are exclusive)
Total operations = 4
```

Algorithms can have different number of operations based on input too... Some might after an IF statement comparison, while some might go into a computational loop.

---
Count the number of operations:
```pseudocode
SET num TO 2 

WHILE (num<5)
	DISPLAY num 
	ADD 1 TO num 
ENDWHILE
```
we display 
>2
>3
>4
>#after displaying 4, when we add num, we get num=5 hence while loop breaks

```
SET -> 1 operation 

for each loop, 
we check boolean condition -> 1 operation 
display -> 1 operation 
add 1 to num -> 1 operation 

hence each loop has 3 operations 
we do this 3 times 

that means we have 9 while loop operations.

Finally, the final operation is when we check num and it is equal to 5.

So in total we have 1+9+1=11 operations.
```


---
```pseudocode
SET num TO 1
WHILE (num<4)
	IF (num%2 is 0) THEN 
		DISPLAY num 
	ENDIF 
	ADD 1 TO num 
ENDWHILE
```

Let's count...
1 set operation = **1 operation**

1 while condition operation x 4 = **4 operations**
1 if statement check operation * 3 {for num=1,2,3... not when it's 4} = **3 operations**
1 even display operation = **1 operation**
3 add operations = **3 operations**

Hence, total operations = 1+4+3+1+3 = 12

>12 total operations


```pseudocode
SET num TO 1
WHILE (num<=50)
	IF (num%2 is 0) THEN 
		DISPLAY num 
	ENDIF 
	ADD 1 TO num 
ENDWHILE
```
Again...

1 set operation = **1 operation**

1 while condition operation x 51 = **51 operations** (loop breaks at num=51)
1 if statement check operation * 50 {for num=1,2,3... not when it's 4} = **50 operations**
25 even display operation = **25 operation**
50 add operations = **50 operations**

Hence, total operations = 1+51+50+25+50 = 177

in general, if end value is an even number, total operations are 1+(n+1)+n+(n/2)+n = (3n+2 + n/2) = f(n)


```pseudocode
READ n -> 1 operation
SET num TO 2 -> 1 operation
WHILE (num<=n) -> 1 operation * n {2,3,4...n+1}
	DISPLAY num -> 1 operation * (n-1) {2,3,4...n}
	ADD 1 TO num -> 1 operation * (n-1) {2,3,4...n}
ENDWHILE

>total = 1+1+n+n-1+n-1=3n
```


---
Nice Practice Problem for Pseudo Code:
```
READ n -> 1
READ k -> 1

WHILE k<=n -> (int)(n/k) + 1
	# Loop to be -> (int)(n/k)
	DISPLAY n 
	SUBTRACT k from n
ENDWHILE


//Therefore total = 2 + (int)(n/k) + 1 + 2*(int)(n/k) = 3(1+(int)(n/k))
```


In general, it should be very obvious that the pattern here is that if the loop/if statement is true for `n` cases, things inside the loop/if statement would run `n` times but the condition would be checked `n+1` times.