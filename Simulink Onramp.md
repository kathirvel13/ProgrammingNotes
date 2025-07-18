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

You can branch a signal by using the right mouse button to click and drag from an existing signal line.
Double-clicking on a signal highlights its name label and enables an editable text box.
The first and third input ports of the switch block are analogous to the executions of `if` and `else` statements, respectively. The second input is the condition.
# Scope
This block when double-clicked opens a window where you can view the values of a signal as graphs.