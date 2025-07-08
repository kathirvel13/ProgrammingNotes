#matlab #onramp #ML #statistics

Statistics is a field of mathematics focused on collecting, analyzing and presenting data. 
# Important Statistics terms
- Mean
- Standard Deviation
- Median
- Mode
- Probability Density Function (pdf)
# Reading csv files
```MATLAB
tabledata = readtable("file.csv")
summary(tabledata)
```
`summary()` gives the variables, its datatypes, max, min, median, mean and std.
### Making categories in table
```MATLAB
tabledata.VarName = categorical(tabledata.VarName)
summary(tabledata.VarName)
```
`summary()` gives the number of observations for each category.
### Creating new table based on conditions
```MATLAB
idx = tabledata.VarName == condition
idxScandens = data.Species == "scandens"
summary(idx)
```
`summary()` gives number of observations as `true` and `false` to the condition.
### Subset tables
A subset of the original table can be created by using _row, column_ indexing with parentheses. Use a colon (`:`) to select all the elements in a dimension. 
```MATLAB
subTable = tabledata(idx,:)
```
Here, all the rows of `tabledata` corresponding to `idx` are stored in `subTable`.
# Data Visualization
- `xlabel("X")` and `ylabel("Y")` are used to create labels for the graph.
- `hold on` and `hold off` are used to plot two or more plots in the same graph.
- `legend("data1", "data2")` to identify different plots in a graph.
## Scatter plot
A scatter plot is a type of graph that displays the relationship between two numerical variables using dots to represent individual data points. The pattern of these dots can reveal whether there's a relationship between the variables, and if so, the nature of that relationship (positive, negative, strong, weak, linear, or non-linear). 
Scatter plot - `scatter(x, y)`
Grouped scatter plot - `gscatter(x, y, groupdata)` 
## Histogram
A histogram provides visual insight into how a data set is distributed. The range of possible values is divided into intervals, or _bins_, and each bar shows how many observations fall within that interval.
```MATLAB
histogram(tabledata.VarName)
histogram(tabledata.VarName, BinWidth=0.5, Normalization="pdf")
```
## Scatter plots with Histograms
Scatter plots let you compare two variables, whereas histograms give you a better idea of the distribution of your data. `scatterhistogram(x,y)` lets you do both in one graph. 
`scatterhistogram(x,y,GroupData=groupedData)` visualizes different groups by assigning different colors. 
## Box plots
A box plot compactly summarizes the distribution, making it easier to compare multiple population distributions. The central box represents the middle 50% of observations, and the line inside the box is the data's median, or middle point. The "whisker" lines show the extent of ≈99% of the data if it is normally distributed. The remaining outliers are shown individually with blue circles.

![[Box_Plot.png]]

```MATLAB
boxchart(groupdata, ydata)
boxchart(groupdata, ydata, GroupByColor=cgroupdata)
```
