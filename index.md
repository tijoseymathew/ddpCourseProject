---
title       : k-Means Visulaization
subtitle    : Developing Data Products- Course Project
author      : Josey Mathew
job         : Student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## k-Means Clustering

* k-Means clustering is an unsupervised learning method that partitions n observations into k clusters.
* The algorithm begins by randomly choosing k samples from the given set as initial centers.
* The rest of the samples are clustered and said to belong to initial center closest to it.
* The cluster centers are then updated as the mean value of the cluster members.
* The process repeats until convergence.

--- &twocol

## k-Means Clustering

*** =left
### Advantages
* With large number of varaibles, k-Means is computationally faster than hierarchial clustering (for small k).
* k-Means may produce tighter clusters than hierarchial clustering, especially if the clusters are globular.
* The algorithm is easier to understand.

*** =right
### Dis-advantages

* Initialization might affect the quality of the clusters produced.
* Setting the number of clusters to be found is difficult to predict.
* The distance metric used affects the type of clusters found.

--- 

## Shiny app
* The shiny application is developed to give a visualization of k-Means clustering.
* The user has the choice of randomly generating n samples in a two dimensional space.
* The user can also select the number of cluster centers.
* The generated samples and the cluster center are shown in two different plots.
* Playing around with the different setting allows user to understand certain aspects of k-Means clustering.?


