## Branching
(Logic Gates)
IF $\rightarrow$ THEN | ENDIF
IF $\rightarrow$ ELSE $\rightarrow$ THEN | ENDIF

## Boolean
TRUE & FALSE
AND, NOT, OR

(you know this stuff…)

## Problem 1.
Ellen and Ana are moving together. Determine how many cants they will have in total?
Solution Design:
- Find out how many cats each person have.
- Handle error in input (throw and error if either of them have negative cats)
- display total result if no error is thrown
```Algorithm
READ anaCats
READ ellenCats

IF (anaCats<0) OR (ellenCats<0) THEN #if either of them are -ve
	DISPLAY error
ELSE 
	DISPLAY ellenCats + anaCats #or have a compute statement for total
ENDIF
```

## Problem 2.
Calculate salary based on hours worked and hourly rate.
Solution Design:
- Input: hoursWorked and ratePerHour
- Output: totalPay
- Error: negative inputs
```pseudocode
READ hoursWorked
READ ratePerHour

IF (hoursWorked<0) OR (ratePerHour<0)
	DISPLAY error
ELSE 
	DISPLAY hoursWorked * ratePerHour
ENDIF
```
We can have nested loops too... you know that.

## Problem 4
A cake up to 6" cost $10, 6"-12" cost $15, greater than 12" cost $20. Given the diameter of the cake, find the cost for a particular input cakeSize.
```pseudocode
READ cakeSize

IF (cakeSize <= 0) THEN 
	DISPLAY error
	HALT
ENDIF
IF (cakeSize <= 6) THEN
	SET cost TO 10
ELSE
	IF (cakeSize <= 12) THEN
		SET cost TO 15
	ELSE 
		SET cost TO 20
	ENDIF
ENDIF

DISPLAY cost
```
>\[-6] [error]
>\[0] [error]
>\[11] [15]
>\[4] [10]
>\[13] [20]
>\[6] [10]
>\[12] [15]


# While Loops
Repeat Conditions as long as a condition is met.
```
<initialization statements>
WHILE <Boolean-expression>
	<statement if Boolean expression is true>
ENDWHILE
```

## Example 
```pseudocode
SET n TO 5
SET sum TO 0
WHILE n > 0
	COMPUTE sum AS sum + n
	SUBTRACT 1 FROM n
ENDWHILE
```

## Problem 
Write a while loop to calculate n!
```pseudocode
SET n TO 4
SET prod TO 1
WHILE (n>1)
	COMPUTE prod AS prod*n
	SUBTRACT 1 FROM n
ENDWHILE
```

## Problem 
Convert Fahrenheit to Celsius

Solution Design:
- Input: a Temperature in Fahrenheit
- Output: Equivalent Temperature in Celsius
- Error: Temperature below absolute zero (-459.67F)
```pseudocode
READ tempF 
IF (temp < -459.67) THEN 
	DESPLAY error 
ELSE 
	COMPUTE tempC AS (tempF-32)*5/9 
	DISPLAY tempC
ENDIF
```

## While Loop Example 
Write an algorithm that displays all numbers from 1 to 100

```pseudocode
SET num TO 1 -> initialization statement
WHILE (num <= 100)
	DISPLAY num 
	INCREMENT num BY 1
ENDWHILE	
```


## Problem
Write an algorithm that display all EVEN numbers from 1 to 100

```pseudocode 
SET num TO 1
WHILE (num <= 100)
	IF (num % 2 IS 0) THEN
		DISPLAY num 
	ENDIF
	ADD 1 TO num 
ENDWHILE
```


>BODMAS

MODULUS IS LIKE MULTIPLICATION AND DIVIDE TOO!

