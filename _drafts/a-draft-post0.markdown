---
title:  "Getting started with t-SNE for biologist (R)"
## date:   2019-03-28 10:18:00
comments: true
description: I believe in the enormous potential of social media in science communication, this Instagram handle is all about that.
categories: ['R']
tags: ['tutorial', 'educational', 'tsne', 'coding']
header-img: "/assets/images/insta_science.jpg"
---
With the dramatic increment in the generation of high-dimensional data (single-cell sequencing, RNA-Seq, CyToF, etc..) in biology, the need for visualizing them in a meaningful way has become increasingly important. Also if you are a pure experimental biologist with little or no coding experience, it can sometimes get quiet bothersome to always depend on a bio-informatician for generating these plots for your data. To be honest, several packages (think of it as softwares) are now available within R or Python that has made generating these plots extremely simple.

Like how you would click buttons within a software UI, these packages would require some basic information from you- like where is your data located? which column of your data represents the sample name? etc..

> I am writing this tutorial assuming that you have no coding experience. By the end of this tutorial you would have setup R, installed packages within R, generated t-SNE plot of a test dataset and finally generated a t-SNE plot of your own data.

Let's get started!
### Step-1: Install R and R studio
1. Go to the **[CRAN website](https://cran.cnr.berkeley.edu/)** and download the latest version of R for your machine (Linux, Mac or Windows). If you are using windows, the easiest setup process would be to click on the **'base'** link and if you are using Mac click on the **R-3.x.x.pkg** link. Once it is downloaded, you would install them like any normal software.
2. Now download **[R Studio](https://www.rstudio.com/products/rstudio/download/#download)**. Although this is not necessary, this software will make your coding life in R much more enjoyable and easy.

There is no shortage for resources in setting up R and R studio. I am going to link you to one [youtube video](https://www.youtube.com/watch?v=lVKMsaWju8w) which is relatively short. You could watch it if you get stuck in one of the above two steps. It also does highlight many of RStudio's capabilities over just having R on your system.

### Step-2: Install the necessary packages within R to generate a t-SNE plot
There are several packages that have implemented t-SNE. For today we are going to install a package called **Rtsne**. To do this- type the following within the console area of your RStudio. It might ask you to choose a server to download the package- I generally choose the one that is closest to me.

{% highlight python %}
install.packages("Rtsne")
{% endhighlight %}

![Installing TSNE package](/assets/images/tsne_1.PNG)

### Step-3: Generate a t-SNE plot with dummy data
An interesting fact about R is that it comes with a number of inbuilt datasets. You can view them by typing 'data()' into the console. For today we are going to use one of those datasets to build a t-SNE plot. The dataset that we are going to use is called 'IRIS'

The iris dataset contains four measurements for 150 flowers representing three species (Iris setosa, versicolor and virginica). You can take a look at the data yourself by typing 'iris' into your console. Below is the expected output.

{% highlight python %}

> iris
    Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
            5.1         3.5          1.4         0.2     setosa
            4.9         3.0          1.4         0.2     setosa
            4.7         3.2          1.3         0.2     setosa
            4.6         3.1          1.5         0.2     setosa
            5.0         3.6          1.4         0.2     setosa
            5.4         3.9          1.7         0.4     setosa
            4.6         3.4          1.4         0.3     setosa
            5.0         3.4          1.5         0.2     setosa

{% endhighlight %}

We are now going to run the t-SNE algorithm on this dataset and generate the t-SNE plot. Let us first load the dataset into our console and split it into two groups (in R we call it objects). The first object will contain the four measurements for all 150 flower and the second object will contain the species that they belong to.

{% highlight python %}



{% endhighlight %}





If you think about it, the first object may broadly represents the kind of data you would be having (RNASeq or single-cell sequencing data). In which case you will have genes in rows and samples/cells in your column. It may look something like below.

{% highlight python %}

> your_data
               Sample_1    Sameple_2     Sample_3    Sample_4
Gene_1            5.1         3.5          1.4         0.2     
Gene_2            4.9         3.0          1.4         0.2     
Gene_3            4.7         3.2          1.3         0.2     
Gene_4            4.6         3.1          1.5         0.2     
Gene_5            5.0         3.6          1.4         0.2     

{% endhighlight %}





















{% highlight python %}
{% endhighlight %}


{% highlight python %}
{% endhighlight %}
