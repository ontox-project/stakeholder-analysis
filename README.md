[![DOI](https://zenodo.org/badge/563249266.svg)](https://zenodo.org/doi/10.5281/zenodo.10566471)

# The repo for the data analysis for the stakeholders consultancy

## Publication
The analysis in this repository has been published in part as

[Diemar MG, Vinken M, Teunis M, et al. Report of the First ONTOX Stakeholder Network Meeting: Digging Under the Surface of ONTOX Together With the Stakeholders. Alternatives to Laboratory Animals. 2024;0(0). doi:10.1177/02611929231225730](https://doi.org/10.1177/02611929231225730)

## Reproducing the analysis
If you would like to reproduce this work, the easiest way is to install the
work as an R package using this code:

in a terminal run:
```
git clone https://github.com/ontox-project/stakeholder-analysis
```

From R/Posit RStudio or another IDE, run:
```
install.packages("remotes")
remotes::install_local(".", build_vignettes = TRUE)
```

This will install all dependencies needed to reproduce the analysis and generate the figures.
Also, it will build the vignette with all the code and documentation.

## Vignettes
To see the vignettes in this package run:
```
browseVignettes("stakeholderAnalysis")
```



