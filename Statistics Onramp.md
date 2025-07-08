#matlab #onramp #ML #statistics

Statistics is a field of mathematics focused on collecting, analyzing and presenting data. 
# Important Statistics terms
- Mean = Sum of all observations / Number of observations
- Median -> Middle value
- Mode -> Most frequent value
- Range = Max - Min
- Standard Deviation (std) -> Measures how far away max and min values are from the mean
- Interquartile Range (IQR) -> Spread of values in middle 50% of the data
- IQR = Q3 - Q1
- Probability Density Function (pdf)
- Skewness
- Kurtosis
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
- `xline(14.268)` and `yline(avg)` are used to draw vertical and horizontal lines in the graph.
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
# Measures of Center
### Mean - `mean(x)` 
Mean is useful for symmetric distributions, but highly sensitive to outliers.
### Median - `median(x)` 
The median gives the midpoint of the sorted data, so half the data is greater than the median and half is less than the median. Compared to the mean, the median is much more resistant to changes in a few data values, and is an especially useful center for nonsymmetric, or skewed, distributions.
# Measures of Spread
The degree of spread of the distributions is how much the data deviates from the center.
### Standard Deviation - `std(x)` 
The _standard deviation_ is typically used to measure the spread of symmetric distributions that follow a bell curve, or _normal distribution_. The standard deviation tends to amplify the effect of any outliers.
### Interquartile Range - `iqr(x)` 
The _interquartile range_ is based on the median (the 50th percentile point). It gives the distance between the 25th and 75th percentiles in the data—that is, the width of the region containing the middle 50% of the data values. Like the median, the interquartile range is resistant to outliers and especially useful for nonsymmetric distributions. 
### Range - `range(x)` 
Range gives you a rough idea of how widely spread out the most extreme observations are. It is strongly influenced by the presence of outliers.
# Measure of Shape
### Skewness
_Skewness_ is a measure of the asymmetry of a distribution. A skewness of 0 indicates a symmetric data set. A positive skewness indicates the data set has more extreme values greater than the mean, that is, a longer tail to the right. Similarly, a negative skewness indicates the data set has more extreme values smaller than the mean, that is, a longer tail to the left.
### Kurtosis
_Kurtosis_ is a measure of how prone to outliers a distribution is, or its "tailedness." By default, a normal distribution has a kurtosis of 3. If the distribution has a narrower peak and wider tails, the kurtosis value is larger than 3. A value below 3 means that the distribution shows a broader peak and shorter tails.

![[Kurtosis.png]]

```MATLAB
skew = skewness(x)
k = kurtosis(x)
```
# Compute by Group
The **Compute by Group** Live Editor task allows you to calculate multiple descriptive statistics by group. By default, the task computes counts for each group. The **Compute by Group** Live Editor task allows you to compute statistics on multiple groups and multiple variables.