# Postopus-in-Binder

<!-- ![image made by DALL·E mini  ](image.jpeg) -->

Support repository for getting the [OCTOPUS code](http://octopus-code.org/) and [Postopus](https://gitlab.com/octopus-code/postopus) package into a Binder notebook.

The Dockerfile uses ideas from [postopus-in-container](https://github.com/iamashwin99/postopus-in-container) repository for installing postopus and octopus.

# Working with the notebook

Click here to launch the notebook:  [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/iamashwin99/postopus-in-binder/HEAD?labpath=Quick_Start.ipynb)

The octopus binary should already be in the the path for the docker image, so one can directly call `octopus` in a terminal and can be called via `! octopus` command inside a jupyter cell.

You can start with the [Quick_Start.ipynb](Quick_Start.ipynb) notebook or create your own notebook.

This repository comes with the input files for the following examples:

* [h-atom](https://octopus-code.org/new-site/main/tutorial/basics/getting_started/?series=octopus-basics)
* [benzene](https://www.octopus-code.org/documentation/12/tutorial/basics/visualization/)
* [methane](https://octopus-code.org/new-site/main/tutorial/basics/time-dependent_propagation/)
* [recipe](https://octopus-code.org/new-site/main/tutorial/basics/recipe/)
* [he](https://octopus-code.org/new-site/main/tutorial/model/1d_helium/)
* [drude](https://www.octopus-code.org/documentation/12/tutorial/maxwell/run04/?series=maxwell)
