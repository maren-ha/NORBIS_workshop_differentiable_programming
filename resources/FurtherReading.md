# References and resources


 :books: **Papers** | :globe_with_meridians: **Blogposts** | :computer: **Code** |


---

## Small vs. big data 

:books: Faraway KJ, Augustin NH. When small data beats big data. *Statistics & Probability Letters* **136**, 142-145 (2018). [doi: 10.1016/j.spl.2018.02.031](https://doi.org/10.1016/j.spl.2018.02.031)

:books: De Fauw J, Ledsam JR, Romera-Paredes B et al. Clinically applicable deep learning for diagnosis and referral in retinal disease. *Nature Medicine* **24**, 1342–1350 (2018). [doi: 10.1038/s41591-018-0107-6](https://doi.org/10.1038/s41591-018-0107-6)

## Differentiable programming 

:globe_with_meridians: [What is differentiable programming?](https://fluxml.ai/blog/2019/02/07/what-is-differentiable-programming.html) -- blogpost used in the workshop for group reading + discussion

:globe_with_meridians: [Engineering Trade-Offs in Automatic Differentiation: from TensorFlow and PyTorch to Jax and Julia](https://www.stochasticlifestyle.com/engineering-trade-offs-in-automatic-differentiation-from-tensorflow-and-pytorch-to-jax-and-julia/) -- detailed blogpost about a comparison of automatic differentiation frameworks, how they work, how they evolved, and their respective pros and cons, including Tensorsflow, PyTorch, JAX and Julia's Zygote.  

:books: Baydin AG, Pearlmutter BA, Radul AA, Siskind JM. Automatic differentiation in machine learning: a survey. *arXiv preprint* (2015). [arXiv:1502.05767](https://arxiv.org/abs/1502.05767) -- overview paper of automatic differentiation as opposed to numeric or symbolic differentiation, explanation of the inner workings.

:books: Innes M, Edelman A, Rackauckas C, Saba E, Shah VB, Tebbutt W. A Differentiable programming system to bridge machine learning and scientific computing. *arXiv preprint* (2018). [arXiv:1907.07587](https://arxiv.org/abs/1907.07587) -- paper introducing the `Zygote.jl` package in Julia and explaining its inner workings, including its specific approach to / implementation of automatic differentiation. 

## Differentiable programming and statistical modelling 

:books: Breiman L. Statistical Modeling: The Two Cultures (with comments and a rejoinder by the author) *Statistical Science* **16(3)**, 199-231 (2001). [doi: 10.1214/ss/1009213726](https://doi.org/10.1214/ss/1009213726)

:books: 
Hackenberg M, Grodd M, Kreutz C, Fischer M, Esins J, Grabenhenrich L, Karagiannidis C, Binder H. Using differentiable programming for flexible statistical modeling. *The American Statistician*, **76(3)**, 270-279 (2021).
[doi: 10.1080/00031305.2021.2002189](https://doi.org/10.1080/00031305.2021.2002189) -- paper about the approach presented in the workshop. 
:computer: [Github repository](https://www.github.com/maren-ha/DifferentiableProgrammingForStatisticalModeling) with Julia code 

:globe_with_meridians: [Youtube video](https://www.youtube.com/watch?v=FihLyzdjN_8) of a talk by Chris Rackauckas about the use and practice of scientific machine learning ($\approx$ machine learning/neural networks combined with dynamic modeling) -- Chris Rackauckas is *the* driving force of the `DifferentialEquations.jl` and the `SciML` (=scientific machine learning) ecosystem in Julia, aiming to combine deep learning and differential equations, check out his other talks or blogposts :) (Youtube or on [his website](https://www.chrisrackauckas.com) and [blog](https://www.stochasticlifestyle.com))

## Combining neural networks and dynamic modeling 

:books: Hackenberg M, Harms P, Pfaffenlehner M, Pechmann A, Kirschner JB, Schmidt T, Binder H. Deep dynamic modeling with just two time points: Can we still allow for individual trajectories?. *Biometrical Journal* (2022).
[doi: 10.1002/bimj.202000366](https://onlinelibrary.wiley.com/doi/10.1002/bimj.202000366); 
:computer: [Github repository](https://github.com/maren-ha/DeepDynamicModelingWithJust2TimePoints) with Julia code. 

:books: Chen RTW, Rubanovy Y, Bettencourt J, Duvenaud DK. Neural ordinary differential equations, in: *Advances in Neural Information Processing Systems*, 
Bengio S, Wallach H, Larochelle H, Grauman K, Cesa-Bianchi N, Garnett R (eds), **31** (2018). [URL](https://proceedings.neurips.cc/paper/2018/file/69386f6bb1dfed68692a24c8686939b9-Paper.pdf) -- original paper introducing the idea of differentiating through ODE solvers efficiently, in the context of the so-called "neural ODEs", where the idea is to replace the layers of a neural network with continuous dynamics defined by an ODE. 

:books: Rackauckas C, Ma Y, Martensen J, Warner C, Zubov K, Supekar R, Skinner D, Ramadhan A, Edelman A. Universal differential equations for scientific machine learning. *arXiv preprint* (2020). [arXiv:2001.04385](https://arxiv.org/abs/2001.04385); -- how can you include neural networks inside an ODE system (e.g., to identify missing terms), many different examples + code in Julia. 
:computer: [Github repository](https://github.com/ChrisRackauckas/universal_differential_equations) with Julia code.

:books: Dandekar R, Dixit V, Tarek M, Garcia-Valadez A, Rackauckas C. Bayesian Neural Ordinary Differential Equations *arXiv preprint* (2020). [arXiv:2012-07244](https://arxiv.org/abs/2012-07244) -- idea of using symbolic regression to find explicit terms of the neural network components in a universal differential equation, in a Bayesian setting


## The Julia programming language

:books: Bezanson J, Edelman A, Karpinski S, Shah VB. Julia: A fresh approach to numerical computing. *SIAM review* **59(1)** 65-98 (2017). [doi: 10.1137/141000671](https://doi.org/10.1137/141000671)

:globe_with_meridians: [Five free courses to learn Julia](https://logankilpatrick.medium.com/5-free-courses-to-learn-julia-start-learning-today-66c1e3173ebc)
(In short:
 * [Introduction to Computational Thinking (at MIT)](https://computationalthinking.mit.edu)
 * [Advanced Scientific Computing in Julia](https://github.com/timholy/AdvancedScientificComputing)
 * [Julia Machine Learning for Beginners](https://www.youtube.com/watch?v=jA6IYSCpIug&list=PLhQ2JMBcfAsi76O13sJzk4LXA_mu5sd9E)
 * [Julia for data science](https://juliaacademy.com/p/julia-for-data-science)
 * [Julia programming for nervous beginners](https://juliaacademy.com/p/julia-programming-for-nervous-beginners)
)

:globe_with_meridians: [Is Julia right for you?](https://towardsdatascience.com/is-julia-actually-right-for-you-b2c003d7cddf)

:globe_with_meridians: [Why I personally use Julia](https://github.com/maren-ha/NORBIS_workshop_differentiable_programming/blob/main/resources/WhyJulia.pdf)

## Elephant :elephant: 

:globe_with_meridians: [How to fit an elephant](https://www.johndcook.com/blog/2011/06/21/how-to-fit-an-elephant/)

:books: Mayer J, Khariy K, Howard J. Drawing an elephant with four complex parameters. American Journal of Physics **78**, 648-489 (2010). [doi: 10.1119/1.3254017](https://doi.org/10.1119/1.3254017)
