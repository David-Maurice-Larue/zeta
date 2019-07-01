---
title: "Info"
author: "David Larue"
date: "July 1, 2019"
output: html_document
---



## Introduction

- The [Riemann Hypothesis](http://www.claymath.org/millennium-problems/riemann-hypothesis), one of the [Clay](http://www.claymath.org) Millenium million dollar prize problems, has had some recent [progress](https://www.pnas.org/content/116/23/11103) via [Jensen Polynomials](http://mathworld.wolfram.com/JensenPolynomial.html).  
- It is worth seeing the Riemann Zeta function along the critical line where the real part of the argument is 0.5.
- Some code adapted from [pracma examples](https://www.rdocumentation.org/packages/pracma/versions/1.9.9/topics/zeta)
- Where the real part, imaginary part (and absolute value) of zeta(z) are 0 is one of the zeroes of the zeta function
- A more limited, non-Shiny view of this was produced at [plot.ly zeta example](http://rpubs.com/dlarue/zeta)
- This Shiny app is hosted at [https://david-maurice-larue.shinyapps.io/ShinyZetaPlot/](https://david-maurice-larue.shinyapps.io/ShinyZetaPlot/). Submitted in support of Coursera, Data Science Specialization, Developing Data Products, Week 4, Project.
- The associated Presentation is hosted at [http://rpubs.com/dlarue/zetapres](http://rpubs.com/dlarue/zetapres).
- The source files Zeta.Rpres, ui.R, server.R, and info.Rmd are located at [https://github.com/David-Maurice-Larue/zeta](https://github.com/David-Maurice-Larue/zeta). 

## Usage

- The user has three inputs to the plots. 
- The plots are of the Riemann Zeta Function, with complex arguments along a line of fixed real part. The default is 0.5, the so-called "Critical Line" where the Riemann Hypothesis suggests that all non-trivial zeroes of the Zeta function lie. If one wishes to explore off of the critical line, one might enter a number between 0 and 1 here, as it is known that zeroes off the critical line, if they exist, would fall in this strip.
- The minimum and maximum values of the imaginary part of the complex z-value that will be the arguments to the Zeta function may be entered. Together with the real part of z, this defines a line segment of z values. The zeta function produces a complex result. The graphs permit exploration of those values.

## Meaning of the graphs

- First three plots show different views (a perspective view, a side view, and a top-down view) of the results of the Zeta function applied to the segment of complex z-values defined in the user inputs. Also plotted is a constant 0+0i value, whose intersection with the curve indicates a zero of the Zeta function.
- The fourth plot is a two-dimensional plot of the real and imaginary parts of zeta(z) as we vary the imaginary part of z per the user inputs.
- The first non-trivial zero of the Zeta function, which indeed lies upon the critical line, is approximately z=0.5+14.13472514i. Hence the default values of the limits include this one.
