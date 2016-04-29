
Provides an R package called `empiricalGameTheory` for analysing heuristic games using empirical game theory (Wellman 2006).

## Installation

~~~bash
R CMD INSTALL empiricalGameTheory
~~~

## Example usage

~~~R
library(empiricalGameTheory)

# Payoff matrix for Rock, Paper, Scissors
payoff.matrix.rps <- matrix( c(
	0, 0, 2,  0,  0,  0,
	0, 1, 1,  0, -1,  1,
	2, 0, 0,  0,  0,  0,
	1, 1, 0, -1,  1,  0,
	0, 2, 0,  0,  0,  0,
	1, 0, 1,  1,  0, -1),
	    ncol = 6, byrow=T)

initial.values.random <- GenerateRandomInitialValues()

game.rps <- HeuristicGameFromPayoffMatrix(payoff.matrix.rps, strategies = c('R', 'P', 'S'))
game.rps.analysed <- Analyse(game.rps, initial.values = initial.values.random, times = times.rd)
plot(game.rps.analysed)
~~~

For a more complete example of analysing an actual agent-based model, see [this example](http://jasa.sourceforge.net/abm-dynamics-knitr.html) in which we analyse a financial market model implemented in the [JASA](http://jasa.sourceforge.net) framework.

## References

Wellman, M. P. (2006). Methods for Empirical Game-Theoretic Analysis. In Twenty-First National Conference on Artificial Intelligence (AAAI-06) (pp. 1152–1155). Boston, Massachusetts.
