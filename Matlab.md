#matlab
MATLAB is an abbreviation for ***MATrix LABoratory***.
# Interface
MATLAB consists of three main windows.
1. Command Window (where commands are executed one-by-one)
2. Workspace (shows all the variables you created)
3. Current folder (file explorer)
Use *Live Script* to create a script with multiple lines of command and execute them all at once.
# Basic Commands
```MATLAB
5*3
k = ans + 1
k = k / 2
k
var_no = (ans+k)/2;
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
- To display more decimal values, use `format long`.
- To go back to default, use `format short`.
```MATLAB
format long
pi
format short
pi
```
# Arrays
All MATLAB variables are _arrays_. So, each numeric variable can contain multiple numbers. You can store related data in one variable by using an array.
Scalar is represented by a _1_-by-_1_ array. Create arrays with multiple elements using square brackets.
``` MATLAB
x = [3 5]
y = [1; 7]
mat = [1 2 3; 1 4 9]
d=[sqrt(10), pi^2]
```
Separate elements by space or comma to create a row vector (1-by-_n_). Separate elements by semicolon (;) to create a column vector (n-by-_1_).
You can use a combination of spaces and semicolons to create a _matrix_, which is an array with multiple rows and columns.
```MATLAB
a = 1:10
b = 1:2:49
c = 1:0.5:5
x = linspace(5,10,5)
x = x'
c = (5:2:9)'
h = linspace(1,2*pi,100)'
```
You can create an evenly spaced vector by using the colon (:) operator and `start:step:stop` values. Notice that square brackets are not needed when you use the `:` operator. It uses a default spacing of `1`.
If you know the number of elements in a range, use `linspace(first,last,no_of_elements)` which means *linearly spaced* to generate the vector.
The transpose operator (`'`) converts a row vector to a column vector.
```MATLAB
x = rand(2)
y = rand(2, 3)
a = zeros(3)
b = ones(4, 3)
size(y)
```
`rand(2)` creates a _2_-by-_2_ square matrix with random elements in the range 0 and 1. `rand(2, 3)` creates a _2_-by-_3_ rectangular matrix.
Most array creation functions accept the same inputs as `rand`. For example, the `zeros` and `ones` functions create matrices of all zeros and all ones, respectively.
Use `size()` to find the size of a matrix.