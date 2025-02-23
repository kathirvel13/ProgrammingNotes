#matlab
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