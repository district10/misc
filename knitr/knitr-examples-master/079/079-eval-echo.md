# Evaluate and echo different lines

For demonstration purposes, we may want to show some source code in the output, but really evaluate different code in the background.


```r
hook_source = knit_hooks$get("source")
knit_hooks$set(source = function(x, options) {
    res = hook_source(x, options)
    if (!any(grepl("#'#' ", x))) 
        return(res)
    gsub("(^|\n)#'#' ", "\\1", res)
})
```

The trick is to mask the source code in special comments (e.g. `#'#'`), and remove the comment markers later. Of course, you have to guarantee these markers are unique.


```r
x = 2
1/sqrt(2 * pi) * exp(-x^2/2)
```

```
## [1] 0.05399
```

We used `echo=-3` to remove the 3rd expression from the source code, and `gsub()` to strip `#'#'` off.

This is completely hack. Use with care.
