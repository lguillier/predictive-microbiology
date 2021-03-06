% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Proba_T.R
\name{Proba_T}
\alias{Proba_T}
\title{This function describes the evolution of the single-cell growth probability with temperature. For this, we used the model proposed by Jean Christophe Augustin and Aurelia Czarnecka-Kwasiborski in 2012, to describe the increase of the probability from 0 to 1 with increasing values of temperature.}
\usage{
Proba_T(T, Tinf, Tsup, c)
}
\arguments{
\item{T}{Temperature # a number}

\item{Tinf}{The theoritical cellular minimal temperature for growth #a number}

\item{Tsup}{The theoritical cellular maximal temperature for growth #a number}

\item{c}{a parameter #a number}
}
\value{
proba_T_Aug The single-cell growth probability, which increases from O to 1 when temperature value increases at a more favorable condition #a number
}
\description{
This function describes the evolution of the single-cell growth probability with temperature. For this, we used the model proposed by Jean Christophe Augustin and Aurelia Czarnecka-Kwasiborski in 2012, to describe the increase of the probability from 0 to 1 with increasing values of temperature.
}
\details{
\deqn{\begin{equation}p(T)=\left\{\begin{array}{ll}
0, & T \leq T_{\mathrm{inf}} \\
\frac{\exp (T / c)-\exp \left(T_{\mathrm{inf}} / c\right)}{\exp \left(T_{\mathrm{sup}} / c\right)-\exp \left(T_{\mathrm{inf} / c}\right)}, & T_{\mathrm{inf}}<T<T_{\mathrm{sup}} \\
1, & T \geq T_{\mathrm{sup}}
\end{array}\right.\end{equation}}
}
