# Testing text output

See if chunk options like `tidy`, `prompt` and `echo`, etc work as expected.

## A normal chunk


```r
1+1
```

```
## [1] 2
```

```r
for (i in 1:10) {
# nothing before 10
if(i>=10)print(i)
}
```

```
## [1] 10
```

```r
# two blank lines below


dnorm(0)
```

```
## [1] 0.3989
```

## Do not evaluate


```r
1+1
for (i in 1:10) {
# nothing before 10
if(i>=10)print(i)
}
# two blank lines below


dnorm(0)
```

## Add prompts


```r
> 1+1
```

```
## [1] 2
```

```r
> for (i in 1:10) {
+ # nothing before 10
+ if(i>=10)print(i)
+ }
```

```
## [1] 10
```

```r
> # two blank lines below
> 
> 
> dnorm(0)
```

```
## [1] 0.3989
```

## No evaluate or tidy


```r
1+1
for (i in 1:10) {
# nothing before 10
if(i>=10)print(i)
}
# two blank lines below


dnorm(0)
```

## Do not tidy


```r
1+1
```

```
## [1] 2
```

```r
for (i in 1:10) {
# nothing before 10
if(i>=10)print(i)
}
```

```
## [1] 10
```

```r
# two blank lines below


dnorm(0)
```

```
## [1] 0.3989
```

## Do not echo


```
## [1] 2
```

```
## [1] 10
```

```
## [1] 0.3989
```

## Do not comment out results


```r
1+1
```

```
[1] 2
```

```r
for (i in 1:10) {
# nothing before 10
if(i>=10)print(i)
}
```

```
[1] 10
```

```r
# two blank lines below


dnorm(0)
```

```
[1] 0.3989
```

## Do not echo the 2nd expression


```r
1+1
```

```
## [1] 2
```

```
## [1] 10
```

```r
# two blank lines below


dnorm(0)
```

```
## [1] 0.3989
```

## Do not evaluate, echo the 2nd expression


```r
for (i in 1:10) {
```

## Only evaluate the first two expressions




































