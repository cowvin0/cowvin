
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cowvin

<!-- badges: start -->
<!-- badges: end -->

O pacote cowvin implementa list comprehension em R utilizando for loop.

## Instalação do cowvin

Como instalar o pacote cowvin:

``` r
library(remotes)
remotes::install_github("gabrielpereira12345/cowvin")
```

## Exemplo

Utilizando list_comprehension para tomar o quadrado de números pares:

``` r
library(cowvin)

list_comprehension(for(i in 1:10) if(i %% 2  == 0) i*i)
#> [[1]]
#> [1] 4
#> 
#> [[2]]
#> [1] 16
#> 
#> [[3]]
#> [1] 36
#> 
#> [[4]]
#> [1] 64
#> 
#> [[5]]
#> [1] 100
```

Split em strings

``` r
list_comprehension(for(i in c("bata}ta", "cano}ura", "cara}melo")) strsplit(i, "}")[[1]][[1]])
#> [[1]]
#> [1] "bata"
#> 
#> [[2]]
#> [1] "cano"
#> 
#> [[3]]
#> [1] "cara"
```
