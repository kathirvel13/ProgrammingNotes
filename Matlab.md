#matlab
MATLAB is an abbreviation for ***MATrix LABoratory***.
[[Quick Reference.pdf]]
[[Introduction_MATLAB.pdf]]
[[Solving systems of Linear equations using MATLAB.pdf]]
# Interface

MATLAB consists of three main windows.
1. Command Window (where commands are executed one-by-one)
2. Workspace (shows all the variables you created)
3. Current folder (file explorer)

Use *Live Script* to create a script with multiple lines of command and execute them all at once.

MATLAB also have an inbuilt documentation browser to learn more about functions. You can also open the documentation using the `doc <function_name>` command. If you don't know the name of the function, you can search the documentation using phrases.
# Basic Commands

``` MATLAB
5*3
k = ans + 1
k = k / 2
k
var_no = (ans+k)/2;
%{This is a comment.}%
```
+ Unless you specify an output variable, MATLAB stores results in a variable named `ans`.
+ Equal to (=) sign is the assignment operator.
+ When you enter just a variable name at the command prompt, MATLAB displays the current value of that variable.
+ When you enter a command without a semicolon at the end, MATLAB displays the result. Add a semicolon to the end of a command to execute it without displaying the command.
+ Variables should contain only letters, numbers and underscore( _ ) and are case-sensitive.

## Save and Load variables

``` MATLAB
save tempvar
clear
load tempvar
load tempvar k
save only_no var_no ans
```
+ Variables in a workspace can be stored in a `.mat` file by the `save <filename>` command.
+ All the variables from the workspace can be removed with the `clear` command.
+ To load variables from a MAT-file, use the `load <filename>` command.
+ Use `clc` command to clear the Command Window.
+ To load or save only _some_ of your variables, mention the variables as arguments.
+ For any data not present in a variable, it is stored as `NaN` which means "Not a Number" (similar to `None` in Python).

## Built-in functions and constants

``` MATLAB
pi
deg = 90
rad = deg * (pi/180)
y = sin(rad)
r = 3
x = pi*r^2
```
- MATLAB contains a wide variety of built-in functions, such as `abs` (absolute value), `sin` (sine) and `eig` (eigenvalues).

```MATLAB
format long
pi
format short
pi
```
- To display more decimal values, use `format long`.
- To go back to default, use `format short`.

```MATLAB
element = ["Lithium" "Argon" "Potassium" "Calcium" "Scandium" "Vanadium"]
at_no = [3 18 19 20 21 23]
disp("The atomic number of " + element + " is " + at_no)
length(element)
```
`disp()` display strings. Text in MATLAB is enclosed in double quotes (`"`).
`length()` gives the length of an vector.

# Arrays

- All MATLAB variables are _arrays_. So, each numeric variable can contain multiple numbers. You can store related data in one variable by using an array.
- Scalar is represented by a _1_-by-_1_ array. Create arrays with multiple elements using square brackets.

``` MATLAB
x = [3 5]
y = [1; 7]
mat = [1 2 3; 1 4 9]
d=[sqrt(10), pi^2]
```
- Separate elements by space or comma to create a row vector (1-by-_n_). Separate elements by semicolon (;) to create a column vector (n-by-_1_).
- You can use a combination of spaces and semicolons to create a _matrix_, which is an array with multiple rows and columns.

```MATLAB
a = 1:10
b = 1:2:49
c = 1:0.5:5
x = linspace(5,10,5)
x = x'
c = (5:2:9)'
h = linspace(1,2*pi,100)'
```
- You can create an evenly spaced vector by using the colon (:) operator and `start:step:stop` values. Notice that square brackets are not needed when you use the `:` operator. It uses a default spacing of `1`.
- If you know the number of elements in a range, use `linspace(first,last,no_of_elements)` which means *linearly spaced* to generate the vector.
- The transpose operator (`'`) converts a row vector to a column vector.

```MATLAB
x = rand(2)
y = rand(2, 3)
a = zeros(3)
b = ones(4, 3)
size(y)
[row, coln] = size(b)
[value_max, index_max] = max(y)
[~, coln] = size(a)
```
- `rand(2)` creates a _2_-by-_2_ square matrix with random elements in the range 0 and 1. `rand(2, 3)` creates a _2_-by-_3_ rectangular matrix.
- Most array creation functions accept the same inputs as `rand`. For example, the `zeros` and `ones` functions create matrices of all zeros and all ones, respectively.
- Use `size()` to find the size of a matrix.
- If you need only the second output from a function, you can ignore the first output by using a tilde (`~`) in its place.

## Indexing

- You can extract values from an array using _row-column indexing_. Indexing in MATLAB begins with 1 and not 0.
- Use the MATLAB keyword `end` as either a row or column index to reference the last element.
- There is no negative indexing. Instead use arithmetic with the keyword `end`.
- To index into a vector, use a single index value. Use a single range of index values to reference multiple vector elements.
- If you use only one index with a matrix, MATLAB traverses down each column in order.
``` MATLAB
a = linspace(1,10,10)'
x = rand(5, 3)
a(6)
a(3:5) %{both 2nd and fifth elements are included in range}%
x(2, 2)
x(4, end)
x(end-1, end-2)
x(13) %{it is same as x(3, 3)}%
```

Consider matrix `x = rand(5, 3)`. The table given below lists the different methods to index an element in a matrix.

| Index | 1                                      | 2                                      | 3                                     |
| ----- | -------------------------------------- | -------------------------------------- | ------------------------------------- |
| 1     | `x(1,1)`<br>`x(end-4,end-2)`<br>`x(1)` | `x(1,2)`<br>`x(end-4,end-1)`<br>`x(6)` | `x(1,3)`<br>`x(end-4,end)`<br>`x(11)` |
| 2     | `x(2,1)`<br>`x(end-3,end-2)`<br>`x(2)` | `x(2,2)`<br>`x(end-3,end-1)`<br>`x(7)` | `x(2,3)`<br>`x(end-3,end)`<br>`x(12)` |
| 3     | `x(3,1)`<br>`x(end-2,end-2)`<br>`x(3)` | `x(3,2)`<br>`x(end-2,end-1)`<br>`x(8)` | `x(3,3)`<br>`x(end-2,end)`<br>`x(13)` |
| 4     | `x(4,1)`<br>`x(end-1,end-2)`<br>`x(4)` | `x(4,2)`<br>`x(end-1,end-1)`<br>`x(9)` | `x(4,3)`<br>`x(end-1,end)`<br>`x(14)` |
| 5     | `x(5,1)`<br>`x(end,end-2)`<br>`x(5)`   | `x(5,2)`<br>`x(end,end-1)`<br>`x(10)`  | `x(5,3)`<br>`x(end,end)`<br>`x(15)`   |

- When used as an index, the colon operator (`:`) specifies all the elements in that dimension.
- The colon operator can also specify a range of values.
- Unlike python, both the starting element and ending element are included in the range when slicing.
- For indexing nonconsecutive numbers, you can use an row vector as an index.
- You can change the elements in a vector by combining indexing with assignment.
```MATLAB
x(2, :) %{second row}%
x(2:4, 1:2)
x(:, end-1:end) %{Last two columns of x}%
a = 1:3:30
a([1, 4, 9])
a(2) = 101
```

# Operation on vectors

```MATLAB
x = [1 2 3]
y = x + 1 %{adds 1 to every element of x and stores in y}%
z = 2 * x %{multiplies every element by 2 and stores in z}%
sum = x + y %{corresponding elements are added}%
x = max(x)
y = sqrt(y)
y = round(y)
a = z .* y
```
- To perform vector-to-vector operation, they should have the same size.
- The `*` operator performs matrix multiplication on two equally sized vectors. The `.*` operator performs element-wise multiplication by multiplying the corresponding elements of two equally sized arrays.

# Logical indexing
```MATLAB
x = pi < 4
[5 10 15] > 12

%{extracts all elements of `v1` that are greater than `6`}%
v = v1(v1 > 6)

a(a =< 5 & a >= 11)
b(b == 6 | b ~= 0)
```
- Relational operators, such as `>`, `<`, `<=`, `>=`, `==`, and `~=` perform comparisons between two values. The outcome of a comparison for equality or inequality is either `1` (`true`) or `0` (`false`).
- Compare an array to a single scalar value using relational operators and the result is a logical array of the same size as the original array.
- You can combine logical comparisons by using the logical operators AND (`&`) and OR (`|`).

# Plot Vectors

```MATLAB
plot(mass, force, "r--*")
plot(sample, v1, "k-o", LineWidth=4)
plot(x1, y1)
hold on
plot(x2, y2)
hold off
```
- You can plot two vectors of the same length against each other using the `plot(x,y)` function.
- Graph of each `plot` command is created in a separate plot. One line can be plotted on top of another in the same graph by using the `hold on` command and use`hold off` to return back to default plot behavior.
- When you plot a single vector by itself, MATLAB uses the vector values as the _y_-axis data and sets the _x_-axis data to the range of `1` to `n` (the number of elements in the vector).

## Plot Annotation

```MATLAB
plot(x, y)
title("Sample Plot")
xlabel("X-Axis")
ylabel("Y-Axis")
```

# Importing Data as a Table
- Opening `.mat` file will load all variables stored by it.
- Opening an image file will store the values of pixel in a table.
- We can choose to edit what data should be imported as a table when opening an `.csv` or a text file.

```MATLAB
table.VariableName
top3rows = table(1:3,:)
```
- Use dot notation to access columns of a table.
- To extract rows, use regular array indexing.

# Conditional statements
![[MATLAB_conditional.png]]

```MATLAB
if condition1  
	code  
elseif condition2  
	code  
else  
	code  
end
```

# For Loop
![[MATLAB_for_loop.png]]
