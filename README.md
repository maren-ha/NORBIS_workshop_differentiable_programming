# NORBIS workshop on differentiable programming

<img src="https://pbs.twimg.com/profile_images/588692815372103680/8SETYsn3_400x400.jpg" width="150" height="150" />

>This repository contains code, notebooks and further materials for the workshop on **Differentiable programming for flexible modelling with small data** to be held at the 8th Annual NORBIS conference, October 24-28, Rosendal (Norway). 

## Introduction 

### What is differentiable programming? 

![](differentiable_programming_overview.jpg)

The success of deep learning in recent years has been fuelled by large volumes of data, such as massive image datasets, that have made purely data-driven modelling by neural networks feasible. 
However, in many biomedical applications only a much smaller number of observations is available, such that modelling is typically based on the assumption of a more restricted, explicit underlying data-generating model, e.g., a regression model or a system of differential equations. This lacks the flexibility and expressiveness of deep learning models but facilitates explainable knowledge-driven modelling in small data settings. 

Instead of viewing these modelling paradigms as opposing approaches to data analysis, the recently proposed concept of *differentiable programming* allows for combining their respective advantages and thus addressing complex modelling challenges, in particular for biomedical small data problems. Specifically, differentiable programming facilitates designing models that comprise several potentially distinct building blocks, e.g., neural networks and differential equations, and jointly optimise all model components. This is done by implementing a joint model loss function and using automatic differentiation to get parameter estimates for all model components for gradient-based optimisation. 

### What to expect in this workshop

In this workshop, participants will get familiar with differentiable programming in theory and practice and will get hands-on experience on an exemplary biomedical small data problem tackled by differentiable programming. In the first part of the workshop, the participants will gain a deeper understanding of the core ideas and inner workings of differentiable programming through group reading and discussions. The second part of the workshop will focus on coding examples provided in Colab or Jupyter notebooks. Specifically, they participants will get hands-on experience using automatic differentiation in small examples, to see the technology "in action", before re-implementing a more complex model that integrates neural networks and differential equations to infer disease trajectories from patients with spinal muscular atrophy in a small data scenario.

### A note about programming language 

All code for the workshop notebooks is written in the [Julia](https://julialang.org) programming language. As a rather young programming language, Julia has been developed as a fresh and pragmatic approach to scientific computing, providing a low-barrier approach to state-of-the-art methods development for biostatistics. Specifically, using Julia allows for easily picking up emerging modelling trends, such as differentiable programming, which requires straightforward access to automatic differentiation libraries. 

The low-barrier approach and flexibility of Julia allow to more readily implement scientific ideas that researchers might not have pursued with other tools, e.g., by using differentiable programming to flexibly integrate different modelling paradigms. I will show this flexibility both in some simple examples and based on a more complex model, where combining deep learning with dynamic modelling allows for describing individual-specific disease trajectories, despite a relatively small number of patients and few and irregular follow-up time points.

## Workshop schedule 

**Tuesday, October 25, 2022**
| :alarm_clock: | :point_down:                                                                    |
| ------------- | ------------------------------------------------------------------------------- |
| 9:00 - 9:15   | Introduction :wave:                                                             |
| 9:15 - 9:45   | What is "small data"?  :speech_balloon:                                                    |
| 9:45 - 10:30  | What is differentiable programming? :books: + :speech_balloon:                           |
| 10:30 - 11:00 | Coffee break :coffee:                                                           |
| 11:00 - 11:30 | Automatic differentiation in action :clap: :computer:                           |
| 11:30 - 12:30 | Neural networks + dynamic modeling for a small data challenge :clap: :computer: |

## How to access the code notebooks 

### Using Google Colab 

### Using Jupyter 

## What's in this repository? 

