# NORBIS workshop on differentiable programming

<img src="https://pbs.twimg.com/profile_images/588692815372103680/8SETYsn3_400x400.jpg" width="150" height="150" />

This repository contains code, notebooks and further materials for the workshop on 

**Differentiable programming for flexible modelling with small data** 

to be held at the 8th Annual NORBIS conference, October 24-28, Rosendal (Norway). 

## Introduction 

### What is differentiable programming? 

![](pictures/differentiable_programming_overview.jpg)

The success of deep learning in recent years has been fuelled by large volumes of data, such as massive image datasets, that have made purely data-driven modelling by neural networks feasible. 
However, in many biomedical applications only a much smaller number of observations is available, such that modelling is typically based on the assumption of a more restricted, explicit underlying data-generating model, e.g., a regression model or a system of differential equations. This lacks the flexibility and expressiveness of deep learning models but facilitates explainable knowledge-driven modelling in with smaller sample sizes. 

Instead of viewing these modelling paradigms as opposing approaches to data analysis, the concept of *differentiable programming* allows for combining their respective advantages and thus addressing complex modelling challenges, in particular for biomedical small data problems. The core idea is to combine potentially distinct building blocks, e.g., neural networks and differential equations, into one joint model, and optimise all the components together, to get "the best of both worlds". Specifically, this is done by implementing a joint loss function and using automatic differentiation to get parameter estimates for all model components for gradient-based optimisation of the joint loss function. 

### What to expect in this workshop

You will get familiar with differentiable programming in theory and practice and will get hands-on experience on an exemplary biomedical small data problem, where we will optimise a model that combines deep learning and dynamic modelling components by differentiable programming. In the first part of the workshop, you will gain a deeper understanding of the core ideas and inner workings of differentiable programming through demo code examples to see the technique "in action", group reading and discussions. The second part of the workshop will focus on hands-on coding examples in the [Julia](https://julialang.org) programming language, provided in Colab or Jupyter notebooks. Specifically, we will re-implement a [more complex model](https://github.com/maren-ha/DeepDynamicModelingWithJust2TimePoints) that integrates neural networks and differential equations to infer individual patients' disease trajectories in a small data scenario. The model is based on [our paper](https://doi.org/10.1002/bimj.202000366) and my [MSc thesis](https://github.com/maren-ha/MSc-Thesis).


## Workshop schedule 

**Tuesday, October 25, 2022**
| :alarm_clock: | :point_down: |
| ------------- | ------------ |
| 9:00 - 9:15   | Welcome :wave:                                                             |
| 9:15 - 9:35   | Intro to small data and differentiable programming - demo examples :computer:                                                    |
| 9:35 - 10:30  | What is differentiable programming? - core concepts :books: + :speech_balloon:                           |
| 10:30 - 11:00 | Coffee break :coffee:                                                           |
| 11:00 - 11:30 | Differentiable programming + small data concepts ctd. :speech_balloon: :pencil:                           |
| 11:30 - 12:30 | Neural networks + dynamic modeling for a small data challenge - hands-on :clap: :computer: |

## How to access the code notebooks 

I recommend that you access the code notebooks for the second, hands-on part of the workshop via [Google Colab](https://colab.research.google.com), see below for more details. This will install Julia and all packages on your Google Colab runtime and require no local installation. 

Alternatively, you can access the notebooks based on [Jupyter](https://jupyter.org). This requires a local installation of Julia and the `IJulia` package for working with Jupyter notebook inside Julia. 

***Step 1:*** **Clone or download** this repository to your computer: On the Github page, click the green "code" button, and copy the url to clone the repo or click on "download zip", and then extract. 

![](pictures/CloneRepo.png)

***Next steps:*** Depending on whether you use Google Colab to run the notebook (recommended) or Jupyter notebooks. Please read below for details. 

### a) using Google Colab (recommended)

* ***Prerequisites:*** You need a Google account (and a small bit of free space on your Google Drive). 
* ***Pros:*** Requires no local installation of Julia, no OS-dependent intricacies when installing packages etc.   
* ***Cons:*** You have to re-install Julia and all the required packages again whenever your Colab runtime crashes or restarts, which will take some time (~ 5-10 minutes). 
* ***Instructions:***
  * get a copy of the notebook to your Google Drive: Open the notebook... <a href="https://colab.research.google.com/github/maren-ha/NORBIS_workshop_differentiable_programming/blob/main/Colab_Practicals.ipynb" target="_parent"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a> 
   * ... and create a copy in your Google Drive 
> :zap: **Very important**:zap: Please make a copy of the notebook **straight away** or upload the `Colab_Practicals.ipynb` file from the repository to your Google Drive, so that you have a copy in your own Google Drive! Otherwise you will not be able to save it and any changes you do in the notebook will be lost after you close the tab. 
* After you have copied the notebook to your drive: 
  * run the first cell to install the Julia kernel 
  * re-load the page (by clicking on the :leftwards_arrow_with_hook: icon in the address line of the browser or pressing Ctrl + R)
  *  upload the [`Project.toml` file](https://github.com/maren-ha/NORBIS_workshop_differentiable_programming/blob/main/Project.toml) from this repo to your Google Drive (Click on "Files" in the left menu, then on the upload icon, then select the file)
   * proceed by running the next cells, which check the installation and install the package dependencies

### b) using Jupyter 

If you don't have a Google account, or prefer to have everything installed locally on your computer, you can use Julia inside Jupyter. 

* ***Pros:*** Afer you have installed everything once, you can easily go back and modify things and play around, without having to wait for all packages to be installed and precompiled again on a fresh Colab runtime. Everything will already be there and much faster after first precompilation. 
* ***Cons:*** You have to install Julia and all the required packages locally on your computer, which can sometimes cause conflicting versions issues and might need some OS-dependent manual debugging at first (however it typically works well, so I do encourage you to try it out anyway :wink:)
* ***Instructions:***
  * download and install Julia: either the [v1.8, the current stable release](https://julialang.org/downloads/#current_stable_release), or [v1.7.2 from the older releases page](https://julialang.org/downloads/oldreleases/), which I've installed in the Google Colab environment. 
  * open Julia (OS-dependent, but you should generally find a Julia icon somewhere in your programmes/applications folder, on which you can double-click)
  * you should see the Julia REPL. Type in the following commands
    * `using Pkg` to use the package manager, 
    * `Pkg.add("IJulia")` to add the `IJulia` package needed to run Jupyter notebooks <img src=pictures/JuliaREPL.png  width="600" height="300" /> 
    * `using IJulia` to include the package
    * `installkernel("Julia")` to install the Julia kernel for Jupyter
    * `notebook()` to open a fresh Jupyter instance      <img src=pictures/JuliaREPL_notebook.png width="600" height="400" /> 
    * navigate to your local copy of the workshop repository in your file system and open the `Jupyter_Practicals.ipynb` file <img src=pictures/Jupyter.png  />

For more details on IJulia, see [the docs](https://julialang.github.io/IJulia.jl/stable/).

## What's in this repository? 

* the notebook files for the demo and hands-on part, in a Google Colab version and a Jupyter notebook version `Colab_Practicals.ipynb` and `Jupyter_Practicals.ipynb`
* the `Project.toml` file specifying the Julia environment (important to have all packages installed in the correct versions)
* the slides used during the workshop (currently in a draft version): `Slides_Draft.pdf`
* the `blogpost` folder contains the material for the reading/joint discussion session:
  * the blogpost on differentiable programming we will read in the workshop and discuss in groups in a Markdown and pdf version, `Blogpost_What_is_differentiable_programming.md` and `...pdf`,...
  * and questions to be answered on the blogpost during the discussion session, again in Markdown and pdf, `Questions_for_discussion.md` and `....pdf`
* the `resources` subfolder contains a list of references used in the workshop and more resources for further reading, structured according to the main workshop topics, including blogposts and code repositories, and the slides of a recent talk I gave about why I use Julia (because I get asked that a lot)
* the `elephant` subfolder contains a little fun example of Julia code and showing how you actually *can*  fit an elephant with just 4 parameters
*  the `pictures` subfolder contains all the `.png`s included in this README and the references document (to ensure they render correctly)
*  some housekeeping files (the repo is hosted under an MIT `LICENSE.md`, the `.gitignore`)
*  this `README.md` 

## A note about my choice of programming language 

All code for the workshop notebooks is written in [Julia](https://julialang.org). Since I am often asked "why Julia?!", here are some of my personal reasons: Julia...

* is a young programming language developed as a fresh and pragmatic approach to scientific computing, combining performance and speed with ease of use
* provides a "low-barrier approach" to state-of-the-art methods development for biostatistics 
* allows for easily picking up emerging modelling trends, such as differentiable programming, which requires straightforward access to automatic differentiation libraries
*  allows to more readily implement scientific ideas that researchers might not have pursued with other tools, specifically when it comes to flexibly integrating different modelling paradigms. 

If you want to know more, I've uploaded the [slides](https://github.com/maren-ha/NORBIS_workshop_differentiable_programming/blob/main/resources/WhyJulia.pdf) of a talk I recently gave about why I use Julia in the `resources` subfolder :blush:
