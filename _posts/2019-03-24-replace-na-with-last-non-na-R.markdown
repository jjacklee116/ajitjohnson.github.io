---
title:  "R- Update or replace NA with adjacent column values or last non-NA value"
date:   2019-03-24 10:18:00
comments: true
description: Fill missing values using last or previous observation- A quick vectorized alternative to looping over a data-frame for replacing NA.
---

Recently I had a data-frame which contained empty/missing values. It's not uncommon to find yourself with missing values (i.e. NAs), especially in time series. This may be the result of a data omission or some mathematical or merge operation you do on your data. Zoo package provides a variety of functions to handle missing data.

Say I had a dataframe that looks like the one below,
{% highlight R %}
dat <- data.frame(col1 = c(1,2,3,4,5), col2  = c("a", NA, NA , "b", NA))

  col1 col2
1    1    a
2    2 <NA>
3    3 <NA>
4    4    b
5    5 <NA>
{% endhighlight %}

I want to fill in the NA values with the last known non-NA value from that column. So I want the data frame to look like this

{% highlight R %}
1    1    a
2    2    a
3    3    a
4    4    b
5    5    b
{% endhighlight %}

You could loop through each row and identify rows that have an NA and replace it with the previous value but thankfully there is a much faster alternative. Especially if you are like me who works with millions of data-points, this is a life saver. I came across the na.locf() function in the zoo library which does the job. This function takes the last observation carried forward approach. In most circumstances this is the correct thing to do. It both preserves the last known value and prevents any look-ahead bias from entering into the data. You can also apply next observation carried backward by setting fromLast = TRUE.

{% highlight R %}
library(zoo)
library(dplyr)

dat <- data.frame(col1 = c(1,2,3,4,5), col2  = c("a", NA, NA , "b", NA))
# Apply function

dat <- na.locf(dat)

  col1 col2
1    1    a
2    2    a
3    3    a
4    4    b
5    5    b
{% endhighlight %}

Unfortunately, na.locf() only on columns. But what if you would want to apply it to rows? In this case, you can use an apply function to apply the na.locf() on all rows.

{% highlight R %}
# We use data.frame because apply function returns a matrix
dat <- data.frame(t(apply(dat, 1, na.locf)))
{% endhighlight %}

It's quite a neat function and certainly comes in helpful when cleaning up data sets which don't tend to be as uniform as you'd hope! Hope this was helpful.
