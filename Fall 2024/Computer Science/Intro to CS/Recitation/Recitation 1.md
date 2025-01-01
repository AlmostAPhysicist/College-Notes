## 1. 
Create a pseudocode for an algorithm that determines if a person can vote given their age.

```pseudocode
# input: age
# Anyone aged 18 or above can vote

READ age

IF (age < 0) THEN 
	DISPLAY ERROR 
ELSE
	DISPLAY (age >= 18)
```

## 2.
Create a pseudocode for an algorithm that calculates and displays the area of a rectangle with a given length and width

```pseudocode
READ length
READ width

IF (length<0) or (width<0)
	DISPLAY error
ELSE
	DISPLAY length*width # Skipped the computational and write to memory statement
ENDIF
```

## 3.
Create pseudocode for an algorithm that displays whether a given number is even or odd as well as positive or negative

```pseudocode
READ num
IF (num IS a TYPE{NUMBER}) THEN 
	
	IF (num%2) THEN
		DISPLAY "even"
	ELSE 
		DISPLAY "odd" 
	ENDIF 

	IF (num>0) THEN 
		DISPLAY "positive"
	ELSEIF (num<0) THEN 
		DISPLAY "negative"
	ELSE 
		DISPLAY "IT'S ZEROOOO"
	ENDIF
END
```

## 4. 
Previously you calcylated the area of a rectangle. In addition to length and width, consider a third input, gallons of paint (1 gallon of paint paints 5 units)

```
READ length 
READ width 
READ gallons 

IF (length<0) or (width<0) or (gallons<0) THEN 
	DISPLAY error 
ELSE 
	DISPLAY (length*width < 5*gallons)
ENDIF
```

## 5. 
Create a pseudocode for an algorithm that represents an alarm clock according to the following rules:
When on vocation, buzz at 12PM 
When not on vocation, buzz at 9AM on weekdays and 10AM on weekends.

```pseudocode
READ day #int 1-7
READ time #00:00-24:00
READ vocation_bool

IF (day < 1 OR day > 7) 
```