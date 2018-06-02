
Provides an R package called `empiricalGameTheory` for analysing heuristic games 
using empirical game theory (Wellman 2006).  Heuristic payoff matrices
can be encapsulated in a `HeuristicGame` object.  These can then
be analysed as [evolutionary games](https://sphelps.net/teaching/egt.html)
by numerically integrating the replicator dynamics ODE for different
initial conditions and then plotting the resulting trajectories in phase space.

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

# Encapsulate in a HeuristicGame object
game.rps <- HeuristicGameFromPayoffMatrix(payoff.matrix.rps, strategies = c('R', 'P', 'S'))

# Generate the initial values for the replicator dynamics ODE
initial.values.random <- GenerateRandomInitialValues()

# Integrate from t=0 to t=100 in steps of delta_t = 1/100
times.rd <- seq(0, 100, by=0.01)

# Integrate the replicator dynamics ODE for each initial value
game.rps.analysed <- Analyse(game.rps, initial.values = initial.values.random, times = times.rd)

# Plot the resulting phase-space
plot(game.rps.analysed)
~~~

For a more complete example of analysing an actual agent-based model, see [this example](http://jasa.sourceforge.net/abm-dynamics-knitr.html) in which we analyse a financial market model implemented in the [JASA](http://jasa.sourceforge.net) framework.

## References

Wellman, M. P. (2006). Methods for Empirical Game-Theoretic Analysis. In Twenty-First National Conference on Artificial Intelligence (AAAI-06) (pp. 1152–1155). Boston, Massachusetts.
