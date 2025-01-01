Library: Set of functions (might contain several modules) (For this course)
Modules: Any file with `.module` (For this code)


# Method overloading
Literally just multiple dispatch in Julia.
- Same method name redefined multiple times (ideally for different datatypes)
## Boolean Algebra
AND == &&
OR == ||
NOT == !

| a   | b   | !a  | !b  | !a && b | a && !b | (!a && b) \|\| (a && !b) |
| --- | --- | --- | --- | ------- | ------- | ------------------------ |
| T   | T   | F   | F   | F       | F       | F                        |
| T   | F   | F   | T   | F       | T       | T                        |
| F   | T   | T   | F   | T       | F       | T                        |
| F   | F   | T   | T   | F       | F       | F                        |

#funfact The last Column is XOR :)
Either a or b can be true, but both can not be false or true simultaneously


## Types

(operation results also of same type)
int $\rightarrow$ integer
float $\rightarrow$ Decimal
double $\rightarrow$ precise decimal
short $\rightarrow$ low precision int
long $\rightarrow$ high precision int

## Built in Functions
Math class!
Just use Math.function()

## Type and Functions 
Functions are associated to certain types.
If no function to dispatch for the types provided, you can have **type conversion**

### Automatic 
"x" + 12 is automatically handled by Java by converting 12 to string 

11 * 0.25 is automatically turned into 2.75 to highest precision data type (double) by java

### Something
### Type casting


---
Examples 
```
(7/2)*2.0 -> 3*2.0  (7 and 2 are int)-> 6.0 (double) 

(7/2.0)*2 -> 7.0 (double)

"2"+2 -> 22 (String)

```

```
((double)7/2)*2.0 -> 3.5 (again a double) * 2.0 -> 7.0 (double * double = double)

(7/2.0)*2 -> 3.5 (int / double -> double) * 2 -> 7.0 (double * int = double)

"2" + (String)2 -> 22 (String) (Even without the String Casting, )

2.0 + "2" -> 2.02 again, Number converted to String automatically

```

```
ORDER OF OPERATIONS
(double)(3/5) = double(0) = 0.0

double()3/5=3.0/5=0.6

```


If you have a loop or condition like `if` or `while` in java, if there are no braces (`{}`) then only the first line is executed within the condition statement.

```
if something 
a;
b;
c;
```
would be equivalent to 
```
if something {
a;
}
b;
c;
```

If we want to have multiple statements, we can have the curly braces.


Access all files at Canvas/Files/Goel/Code

---
```
(!a&&b)||(a||!b)
```

| a   | b   | output |
| --- | --- | ------ |
| 0   | 0   | 1      |
| 1   | 0   | 1      |
| 0   | 1   | 1      |
| 1   | 1   | 1      |

```

Simplified Expression:
(a||b)||(!a||!b)
```
---
```
(a||b)||(!a&&!b)||!(a&&!b)
```

Looking at the first part, it's just an Or, so if either of them are true, the entire thing is true
The only case to think about is $a=0,\enspace b=0$. 
The 2nd term is just gonna be $1$ if both are false

| a   | b   | output |
| --- | --- | ------ |
| 0   | 0   | 1      |
| 1   | 0   | 1      |
| 0   | 1   | 1      |
| 1   | 1   | 1      |
```
Simplified Expression:
(a||b)||(!a||!b)
```
---
Another way to write a for loop!
```
for (int iteratorName : arrayName) {
do something
}
```

---
```
java <file/class> <input (optional)> > <output-file>
```
Would write output in the Output Stream to a output file like `output.txt` (whatever name you want)
**> output-file** (overwrites)


```
java <file/class> <input (optional)> < <input-file>
```
Would take input from the `input-file` as the Input Stream
**< input-file**

### Piping 
It sometimes is not useful to save all outputs from one file and use it for the other.

Say you're generating a random sequence of numbers only to average them.
You might save all the inputs, but that would lead to potential memory issues.

You can pipe the two programs as 
```
java <file1> <optional inputs 1> | <file 2>
```

This version runs in parallel to one another.

There are other ways to specify whether to pipe in parallel or sequentially using `PipedOutSteam`


---
# Modular Programming 
Each **Function** has a parenthesis to take in arguments

`StdOut.println(32);`
`StdOut` is the class `println` is the method `32` is the argument

---
A method consists of 
-  a set of instructions
- name (how you call it)
- argument list (even if empty)

Static : every function we write in a file can be used only in that file 
You can make something Non-Static and have it belong to the object.

```
<modifier><return-type><name>(<parameters>){
<statements>
}
```

If there is a return type then there must be a return statement else you get a missing return statement error.

`void` means nothing to be returned

In java, the structure is 
```
public class <class>{
	<functions and code>

	<parameters> main(String[] args){ 
		<code to run>
	}
}
```
- Java always runs the main method of a class by default. The arguments of this method is args which is an array of Strings
	- It's kinda like `__init__` in python
- `public` gives every part of the code access to a certain method (like self in python)
	- makes slope global
- `static` usability of function is not attached to that class.
	- you wouldn't need to define class object and say `Class.method()` at all times 
	- Because it isn't attached to the Class, you can only use it within that file and not when you use the Class as a module
- `<return type>` of method can be `int`, `double`, `void`, anything!
- `parameters` (which take in arguments as their value) are inside a parenthesis and also include a type like 
- `public static void int function(int n){<code>}`
---
JAVA does NOT return multiple things!
Printing in Output Stream is NOT a return.
JAVA does NOT support optional arguments
	you can do a method overload and DEFINE a method for fewer arguments.
		(like Julia's Multiple Dispatch)
	given fewer arguments, it will have a 
Non-Static Functions can be used by creating an object
	`Class <varname> = new Class(); varname.staticFunc();`
		Sadly, you thus can't access it in the terminal itself since you wouldn't be able to create a Class Object unless you're working on a different file or when You're in the Java REPL
		`Class();` creates a blank Class object, UNLIKE `__init__(self)` in python, Class object is uninitialized.
	