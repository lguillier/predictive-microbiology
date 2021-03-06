#' The following function is suggested by Presser et al. (1997) for the suboptimal pH range.
#' @details
#'\deqn{\begin{equation}\frac{\mu_{\max }}{\mu_{\mathrm{opt}}}=\gamma_{\mathrm{pH}}=\left(1-10^{\mathrm{pH}_{\min }-\mathrm{pH}}\right)\end{equation}}
#' @param pH pH # a number
#' @param pHmin pHmin Minimal growth pH #a number
#' @param muopt Optimal growth rate # a number
#'
#' @return mumax #maximum growth rate # a number
#' @export
#'
#' @examples
#' modPresser(6,4.5,0.5)
#' modPresser(c(6,7),5,0.02)
modPresser<-function(pH,pHmin,muopt){
  mumax<-c()
  for (i in 1:length(pH)){
    if(pH[i]<=pHmin) {
      mumax[i]<-0
    } else
      mumax[i]<-1-(10^(pHmin-pH[i]))*muopt
  }
  return(mumax)
}

