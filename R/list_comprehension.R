#' Pacote que implementa list comprehension utilizando for loop
#'
#' @param expr expressão de for loop
#' @description Implementa list comprehension apenas para casos simples utilizando for loop.
#' @author Gabriel Pereira
#' @examples
#'
#' # cria uma lista com o quadrado dos valores ímpares
#' list_comprehension(for(i in 1:10) if(i %% 2 != 0) i^2)
#'
#' # faz um split e toma tudo aquilo que aparece antes da chave
#' list_comprehension(for(i in c("bata}ta", "ceno}ura", "laran}ja")) strsplit(i, "}")[[1]][[1]])
#' @importFrom
#' rlang enexpr
#' @export
list_comprehension <- function(expr) {

  expr <- enexpr(expr)

  expr <- form_loop(expr)

  expr <- substitute(local({

    listinha <- list()

    iteracoes <- 0

    expr

    listinha

  }))

  eval(expr)
}

form_loop <- function(expr) {

  expr[[length(expr)]] <- bquote({
    condicao <- {.(expr[[length(expr)]])}

    if(!is.null(condicao)){
      iteracoes <- iteracoes + 1
      listinha[[iteracoes]] <- condicao
    }
  })

  expr
}
