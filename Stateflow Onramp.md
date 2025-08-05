#matlab #onramp #stateflow 

Stateflow is a graphical modeling environment that is used to design and simulate logic based on time-based events or external signals. Logical systems are state machines. 
While Simulink can model continuous changes in a dynamic system, Stateflow models instantaneous changes in dynamic systems.
# Basic Concepts
- The operating modes of a machine are states. For example, ON/OFF for a switch.
- Active state is the current state of the machine.
- State machines are machines with a set of predefined states where only one exist at a time.
- Certain conditions must be satisfied for state transition. This is visualized using a state-transition diagram.
- Box represents state and arrows indicate transition.
- Transition conditions are expressions that must evaluate to `true` or `false`. They are enclosed in square brackets (`[]`) above the transition arrow.
- Current state of the system can vary based on the previous state and variables.
- The transition execution order specifies the sequence in which transitions are tested.
# Stateflow and Simulink
Stateflow charts are blocks in a Simulink model. The chart receives and sends data using ports, like other Simulink blocks. For example, you can connect the output of a Stateflow chart to a Scope block to visualize the output signals.
Try adding your own chart to the model by double-clicking the Simulink canvas and typing `chart`. Press **Enter** to select the chart block from the Stateflow library.

Use the shortcut **Ctrl+Shift+A** to automatically arrange the model to fit the text.
# State charts
## Temporal Logic
Stateflow also supports using temporal logic also supports using temporal logic conditions based on elapsed time. A common temporal logic operator is `after(N,sec)`, where `N` is the wait time in seconds. Charts in Simulink track time according to the simulation time of the model.
The `after` condition supports other units of time as the second argument.  
- Milliseconds – `msec`  
- Microseconds – `usec`  
- Simulation time steps – `tick`
Here is a list of other [Temporal Logic Operators](https://in.mathworks.com/help/releases/R2024b/stateflow/ug/using-temporal-logic-in-state-actions-and-transitions.html).
## Default transition and Unreachable state
Default transition specifies the initial state of the chart. When creating state charts, default transitions should not have any transition conditions.
![Default Transition](https://matlabacademy-content.mathworks.com/4.79.0/simulinkR2024b/content/Stateflow/Creating%20Stateflow%20Charts/Default%20Transitions/images/default.png)
If any chart is not connected to the default transition (directly or indirectly), it is an unreachable state.
# Stateflow Data
In Stateflow, the inputs, outputs, and local variables used in a chart are called _chart data_. All chart data must have a specified scope. Common data scopes are:

![](https://matlabacademy-content.mathworks.com/4.79.0/simulinkR2024b/content/Stateflow/Symbols/Stateflow%20Data/images/localData.png) - Local Data is only used locally within the chart.
![](https://matlabacademy-content.mathworks.com/4.79.0/simulinkR2024b/content/Stateflow/Symbols/Stateflow%20Data/images/input.png) - Input - An input port in Simulink provides the values for the data.
![](https://matlabacademy-content.mathworks.com/4.79.0/simulinkR2024b/content/Stateflow/Symbols/Stateflow%20Data/images/output.png) - Output - The Stateflow chart outputs the data values via an output port.
![](https://matlabacademy-content.mathworks.com/4.79.0/simulinkR2024b/content/Stateflow/Symbols/Stateflow%20Data/images/parameter.png) - Parameter - A MATLAB workspace variable or Simulink mask parameter defines the value of the data.

The **Symbols** pane allows you to quickly add and remove Stateflow data and assign the data scope using the graphical interface. **Symbols** pane is automatically docked on the right side of the Stateflow editor. If you accidentally close this pane, you can reopen it using the **Symbols** pane button in the **Modeling** tab.
Denoting data as an input or output creates a port on the chart to pass Simulink signals.
# Chart Action
Chart actions allow you to execute code during chart simulation. 
- _State actions_ define what Stateflow does when a particular state is active.
- _Condition actions_ define what Stateflow does when a transition condition is true.
![[Stateflow Action.png]]
## State Actions
The three most common state actions are `entry`, `during`, and `exit`. These occur when they sound like they would: when entering a state, when remaining in a state, and when leaving a state, respectively.
The `entry` keyword in each state allows you to include code that is executed when a state is entered.
## Condition Action
Stateflow can also perform actions associated with transition conditions. The condition action is executed when the preceding transition condition is true. Condition actions are denoted by curly braces (`{}`), to distinguish them from the condition, in square brackets (`[]`).
