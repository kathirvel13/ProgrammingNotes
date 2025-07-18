#simulink #matlab #onramp 
# Simulink
It is a tool developed by MATLAB which simulates real-world operations represented in the form of a block diagram. Simulink uses graphical elements to represent the inputs, outputs, and calculations within a simulation. Signals make connections between blocks at ports.
A signal is a piece of information, such as a numeric value, that can change over the course of a simulation. Blocks accept signals at input ports, perform an operation, and return signals at output ports. Signal lines are visual elements that connect block ports and show where a signal flows: from output ports to input ports, and in the direction of the arrow.
# Blocks used
- Sine Wave (Simulink/Sources)
- Step time (Simulink/Sources)
- Math Function
- Display (Simulink/Sinks)
- Scope (Simulink/Sinks)
- Ramp source - Signal increases with a constant slope
- Constant source
- Subtract (Simulink/Math Operations)
- Gain (Simulink/Math Operations) - Multiply and Amplify
- Compare To Zero block (Simulink > Logic and Bit Operations)
- Compare To Constant block (Simulink > Logic and Bit Operations)
-  Logical Operator block (Simulink > Logic and Bit Operations) - AND, OR, NOT
- Switch (Simulink > Signal Routing) - Conditional statement
- Signal Editor - provides a source of simulated data
- MATLAB Function block (Simulink > User-Defined functions)
- Unit Delay block (Simulink > Discrete) - `1/z`
- Integrator block (Simulink > Continuous) - `1/s`

You can branch a signal by using the right mouse button to click and drag from an existing signal line.
Double-clicking on a signal highlights its name label and enables an editable text box.
The first and third input ports of the switch block are analogous to the executions of `if` and `else` statements, respectively. The second input is the condition.
# Tools
## Scope
This block when double-clicked opens a window where you can view the values of a signal as graphs.
## Simulation Time and Step Size
When Simulink runs a simulation, it numerically solves the dynamic equations represented in the model. Characteristics of dynamic systems can vary widely; for example, they can be discrete, continuous, fast, or slow. To account for this, Simulink includes many types of numerical solvers.
# MATLAB and Simulink
Simulink is built on top of MATLAB. You can create variables using MATLAB scripts or use MATLAB to preprocess data to be used in Simulink.
Many block parameters accept MATLAB variable names as inputs. Simply enter the variable name as it exists in the MATLAB workspace into the parameter field.
Simulink supports variable creation from the Block Parameters dialog. This way, you can create MATLAB variables inside Simulink and reuse their values in other blocks.
In addition to reading and creating MATLAB variables, Simulink can utilize MATLAB _functions_.
The MATLAB Function block (**Simulink > User-Defined functions**) enables you to incorporate a MATLAB function directly into your model.
# Discrete Systems
A discrete, dynamic system is a model of a system's current state x[k] based on current or previous states.
In Simulink, discrete blocks are executed at fixed, periodic intervals. This interval is the _sample time_ for the block. Discrete blocks output discrete signals, as defined by their **Sample time** parameter.
The Unit Delay block has the symbol `1/z`, representing a delay of one time step in the Z-transform domain. The Unit Delay block has its own **Sample time** parameter. By default, this is set to `-1`, meaning that it inherits the sample time from elsewhere in the model.

1. Arrange the equations so the most recent state is on the left hand side of the equation, and the remaining terms are on the right. 
   ![[Pasted image 20250718130652.png]]
2. Determine the number of Unit Delay blocks required. In this case, there are two delays in the equations, so you must use two Unit Delay blocks. 
   ![[Pasted image 20250718130736.png]]
3. Add the Unit Delay blocks and label their signals.
   ![[Pasted image 20250718130756.png]]
4. Construct the right side of each equation. 
   ![[Pasted image 20250718130847.png]]
5. Connect the remaining signals, as necessary, to finish the equality.
   ![[Pasted image 20250718130903.png]]
6. Finally, set all sample times and initial conditions. ![[Pasted image 20250718130958.png]]
# Continuous System
The Integrator block has the symbol `1/s`, representing integration in the Laplace domain. Its output is the integral of the input signal.
For continuous systems, isolate the highest order derivative on the left side of the equation. Then, as with discrete systems, you model the right-side expression and create the equality.

1. Arrange the equations so the highest order derivatives are isolated on the left-hand side of the equation, and the remaining terms are on the right. 
   ![[Pasted image 20250718130035.png]]
2. Determine the number of Integrator blocks required. In this case, there are two integrations in the equations, so two Integrator blocks are necessary. 
   ![[Pasted image 20250718130107.png]] 
3. Add the Integrator blocks and label their signals. 
   ![[Pasted image 20250718130420.png]]
4. Construct the right side of the equation. 
   ![[Pasted image 20250718130447.png]]
5. Connect the remaining signals, as necessary, to finish the equality. 
   ![[Pasted image 20250718130507.png]]
