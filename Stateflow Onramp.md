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
# Chart Execution
Stateflow inherits its sample time (time taken by the numerical solver to take a step) from the Simulink model it is present in.
In a sample time, either the transition condition is checked and state transition occurs, or none of the transition conditions are satisfied and the state remains unchanged, performing the code in `during` block.

The Stateflow chart executes once per time step. Chart execution results in one of two outcomes:  
- A valid transition is taken and a new state becomes active
- No valid transition exists, and the current state remains active.
State `entry` and `exit` actions occur sequentially when leaving and entering a state. The `during` action occurs for each consecutive time step that a state remains active.
# Flowcharts
You can also use Stateflow to construct _flow charts_: stateless models of logic patterns such as decision trees and iterative loops. Flow charts can visually represent complex algorithms in a format that is easy to read, and Stateflow allows you to create and run flow charts without having to translate them into text code.
You build flow charts using two kinds of graphical elements: transitions and junctions. You are already familiar with transitions—conditional pathways represented by arrows. _Junctions_ are nodes that divide the pathways into segments, and are represented by circles ![](https://matlabacademy-content.mathworks.com/4.79.0/simulinkR2024b/content/Stateflow/Flow%20Charts/images/junction.png). They can provide additional branches along a decision pathway.
## Pattern Wizard
You can use the Pattern Wizard to create common flow charts. These patterns include:
1. Decision: `if`, `if-else`, and nested `if` decision patterns.
2. Loop: `for`, `while`, and `do-while` loop patterns.
3. Switch: `switch` patterns with up to four cases.
4. Custom: Custom patterns that you can save for later reuse.

To insert a pattern, open a chart. the **Modeling** tab, **Pattern** and choose the pattern you want to create.
# Functions
You can create functions in Stateflow and can call them multiple times in a chart. You will learn about two types of Stateflow functions: graphical functions and MATLAB functions. You can learn about other types of functions by browsing the documentation page, [Reusable Components in Charts](https://in.mathworks.com/help/releases/R2024b/stateflow/reusable-components-in-charts.html). You can call functions as state actions or condition actions. If a function returns a Boolean value, you can also call it as a transition condition. 
Graphical functions are reusable chart elements that contain flow charts. To add a graphical function, use the left mouse button to click and drag from the graphical function button (![](https://matlabacademy-content.mathworks.com/4.79.0/simulinkR2024b/content/Stateflow/Functions%20in%20Stateflow/Stateflow%20Functions%20Overview/images/functionToolbar.png)) on the object palette . This creates a function container that you can name and populate.
MATLAB Functions are helpful to incorporate MATLAB functions into a Stateflow chart. To create a MATLAB function box in Stateflow, click and drag from the icon on the object palette (![](https://matlabacademy-content.mathworks.com/4.79.0/simulinkR2024b/content/Stateflow/Functions%20in%20Stateflow/Stateflow%20Functions%20Overview/images/mlFuncToolbar.png)).
