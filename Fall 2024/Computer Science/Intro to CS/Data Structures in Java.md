### Array 
Arrays are Vectors of specified size and datatype within.
```
double[] a; -> assigning a datatype type[] assigns a datatype of array for a certain datatype
a = new double[10]; -> actually assigning it an array with a certain size

a[4]=3.0;
a[8]=8.0;

doublr x=a[2]+a[4]
```

```
double[] a = {1,2,3,4} -> assigning type and value together
```

```
int[] a = new int[100]; -> assign type and value but have an empty array
Arrays.fill(a, 20); -> fill array with 20s
```

### How it works :
![[Computer Science/Intro to CS/attachments/Drawing 24-10-01-10-56-48]]
We allocate n consecutive spots in memory for the array when we initiate it with new `{type}[] var = {type}[n];`  and then access those. Each index points to a certain spot in memory.

[Note: Primitive types instead point to only 1 spot in memory]
#funfact Strings themselves are Arrays of characters (they are not primitive in Java!). The `args` sitting in` public static void main(String[] args)` are also arrays, obviously. Which is why we call `args[n]` to access nth element. 


- Number Arrays defaults to 0
- Boolean Arrays defaults to false
- Character Arrays defaults to null

## More on Primitive and Non Primitive types 

primitive -> int, double, boolean, char 
	These take up a predefined memory space.
		char always takes in 1 bytes and so on


##### How memory is allocated to datatypes
```
int x=5;
int b=x;

int[] a = new int[5];
int[] c = new int[5]; -> here it would just point to the same location as a

//Changing a will now also change c since you didn't allocate any new memory for c

//Likewise, changing c would change the same space of memory as a and would hence change a
```

![[Computer Science/Intro to CS/attachments/Drawing 24-10-01-11-08-06|800]]

```
To assign a certain variable a copy of an array, you would make each element point to the elements individually

int c = new double[a.length];
for (int i=0; i<n; i++)
	c[i] = a[i];
```

---
### Practice 
```
public class PQarray1
{
	public static void main(String[] args)
	{
	int[] a = new int[6]; //[0,0,0,0,0,0]
	int[] b = new int[a.length]; //allocating new memory for another array

	b = a; //redirect b to pointing to same mermory location as a
	for (int i=1;i<6;i++) //1,2,3,4,5
		b[i]=i; //b[0] is still 0. b[i]=i, 6>i>0... [0,1,2,3,4,5]

	//Print out array a
	for (int i=0; i<6;i++)
		System.out.print(a[i]+" "); // 0,1,2,3,4,5 -> since b also changed a
	System.out.println();

	//Print out array b
	for (int i=0;i<6;i++)
		System.out.print(b[i]+" "); // 0,1,2,3,4,5
	System.out.println();
	}
}
```

Java also has a garbage collector for memory that is no longer being used!

---
The common errors:
- Illegal.ArrayIndexOutOfBoundsException

---
You can have multidimensional arrays by instead saying `<type>[] var = new <type>[n]`
we use 
```
<type>[][][] var = new <type>[n1][n2][n3]

to access the an element you use var[i][j][k]

you can also use double[][] p = {
{a00,a01,a02},
{a10,a11,a12},
{a20,a21,a22},
}
```

Remember:
- Indices for the arrays start at 0!
- When inputting with `{...}`, you input rows!
- Down the matrix is still the column1 accessed as `var[all][1]`
- `a.length` would give you length of the first column (also length of all columns)
	- Also equal to number of rows
- `a[i]` will be ith element in a column 
	- same as the `ith` row
- You can have jagged Arrays where different rows can have different lengths However, the length of columns would remain the same!


```
int[][] a = {
{1,2,3},
{4,5,6},
{7,8,9}
}
//Loop Over each element in the column (each row)
for (int i=0; i<a.length;i++){
	//Loop Over each element in the ith row
	for (int j=0;j<a[i].length;j++){
		System.out.println(a[i][j]);
	}
}

---
Output:
>1
>2
>3
>4
>5
>6
>7
>8
>9
```

- In java, Actually this is not a certain datatype. You are just making an array of arrays. 
	- `a[i]` would give you the ith array (row) 
		- `a[i][j]` would give you the jth element of the ith row
- You can keep nesting different arrays within each other.
- The notation is just for us to have a uniform structure, we have no reason to bias a vector to be called a row or column but it's convenient while writing it down so we stick to it.

![[Computer Science/Intro to CS/attachments/Drawing 24-10-08-10-54-35|800]]
in memory, instead of storing the value in the cell, we store the address to another array.
This structure would be similar to 
```
int[] a = new int[4]; //Create an array of length 4

int[][] b = new int[2][]; //Create an array of length 2 where each element is an array of unspecified length ([--nothing--] means unspecified length)

b[0] = new int[3];
b[1] = a;
```
Note: 
- You always need to specify the size of an array but since the 2nd length is the size of it's elements and not the array, you can assign the cells any value you like

---
# Strings 
It is NOT a primitive type.
It has a similar structure as an array but it has inbuilt methods that have abstractions. Hence is is an abstract type. It is also a callable object.

## Common Pool and Heap 
![[Computer Science/Intro to CS/attachments/Pasted image 20241101105101.png|800]]
Comparing strings with `a==b` compares the 

**Stack is for variable names and literals, **Heap is for abstract types to which memory locations in non-literal types point**

Also, if we say `a = "hello"`  
`b = new String("hello")`  
  
would `c="hello"` yields 
`c==a`
`b` would have its own memory address pointing to a different object
Literal `hello` would be same for all instances.

Common Pool is just a part of the Heap but it doesn't create new objects for same literals (kinda like how $1=1$ for all ones.)

So `a==b` compares the memory address of a String variable. The variables hold a certain memory address. If they have been defined with the same literal (without the `new` keyword), they point to the same address in the common pool of the stack.

If you want to compare the actual value of the string, 
use `a.equals(b)`
Instead of the address, this compares each element of the String one by one.

---
`compareTo()`
compares ASCII values of elements of a String one by one. It returns the difference between their ASCII values for the first point of difference.

`s1.compareTo(s2)` for instance, would subtract values of s2 from s1.
- If you get a **negative number**, s2 had a higher ASCII value for the first point of contact. Meaning that **`s1` comes earlier in a dictionary**.
- If you get a **positive number**, s2 had a lower ASCII value for the first point of contact. Meaning that **`s2` comes earlier in a dictionary**.
- If you get **0** as an output, there was no difference between the strings.
 
![[Computer Science/Intro to CS/attachments/Pasted image 20241101111055.png|500]]

Comparing String Objects with different lengths is ok. Java fills out `0`s as fillers, corresponding to `null` value.