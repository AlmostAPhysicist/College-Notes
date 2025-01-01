Sig Figures are important. But too many sig figures are silly!
For some contexts, sig figures are not necessary...

You know sig figures but just to recall...

- Any digits that are not 0 are counted.
- 0s between 2 non-zero numbers are counted as significant as well
- any trailing zeros in a non decimal number are NOT counted (501**00** the last 2 0's are not included)
- A number (a single integer that is a count has infinite precision)

Multiplying and division should have the same number of sig figures as the number in the inputs with least number of sig digits.

Addition should have the same number of digits after the decimal as the number with least decimal places.


I can only did...

```python

from time import time

initial = time()
for i in range(10):
	print(i)

print("Time taken = ", time()-initial)
```

```java
class Main{
	public static void main(String[] args){
		System.out.println("Hello World");	
	}
}
```

