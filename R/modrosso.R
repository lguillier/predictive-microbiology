#' The logistic primary growth model using delay and rupture, developped by Rosso in 1996, describes growth as a function of time.
#'@details
#'\deqn{\begin{equation}f\left(t, \Theta_{1}\right)=\left\{\begin{array}{ll}
#'\ln x_{0} & , t \leq \operatorname{lag} \\
#'\ln x_{\max }-\ln \left(1+\left(\frac{x_{\max }}{x_{0}}-1\right) \cdot \exp \left(-\mu_{\max } \cdot(t-\operatorname{lag})\right)\right) & , t>\operatorname{lag}
#'\end{array}\right.\end{equation}}
#' @param temp time (h)
#' @param mumax maximum growth rate # a number
#' @param lag lag time # a number
#' @param log10Nmax maximum population size #a number
#' @param log10N0 initial population size # a number
#'
#' @return log10N #a number
#' @export
#'
#' @examples
#' modrosso(temp=seq(0,24,0.5),mumax=0.37,lag=4,log10N0=2,log10Nmax = 5)
modrosso<-function(temp,mumax,lag,log10N0,log10Nmax){log10N<- (temp<=lag)*log10N0+(temp>lag)*
  (log10Nmax-log10(1+((10^log10Nmax/10^log10N0)-1)*exp(-mumax*(temp-lag))))
return(log10N)
}

