#matlab #onramp #ML #statistics

Statistics is a field of mathematics focused on collecting, analyzing and presenting data. 
## Reading csv files
```MATLAB
tabledata = readtable("file.csv")
summary(tabledata)
```
### Making categories in table
```MATLAB
tabledata.VarName = categorical(tabledata.VarName)
summary(tabledata.VarName)
```
