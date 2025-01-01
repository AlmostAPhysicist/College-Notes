## FizzBuzz
nums 1-100
div by 3: Fizz
div by 5: Buzz 
div by 15: FizzBuzz 

```
FOR each number from 1 to 100
	IF number%15 IS 0 THEN
		DISPLAY "FIZZBUZZ"
	ELSEIF number%3 IS 0 THEN
		DISPLAY "FIZZ"
	ELSEIF number%5 IS 0 THEN
		DISPLAY "BUZZ"
	ELSE 
		DISPLAY number
	ENDIF
	
ENDFOR
```

## Blastoff
---
## Vending Machine 
```
SET flag = FALSE
WHILE flag IS FALSE
	READ code
	IF (code IS "A1") OR (code IS "B1") OR (code IS "C1") OR (code IS "C1")
	SET flag TRUE 
ENDWHILE


READ money
IF money < 1.5 THEN
	DISPLAY "INSUFFICIENT FUNDS"
	HAULT
ELSE 
	DISPENSE code 
	DISPLAY (money-1.5)
END
```
