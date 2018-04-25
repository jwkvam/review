# Why does deep and cheap learning work so well?

By: Henry W. Lin and Max Tegmark
Date: September 29, 2016
URL: https://arxiv.org/pdf/1608.08225v2.pdf

# Big Idea

Neural networks perform a combinatorial "swindle".
If there are $10^6$ inputs taking 256 values each
this swindle cuts the input space from $(10^6)^256$ to
$256 * 10^6$.

# Derivations

## Bayes as Hamiltonian
$$
\begin{aligned}
    p(y|x) &= \frac{1}{N(x)} e^{-(H_y(x) + \mu_x)} \\
           &= \frac{1}{\sum_y e^{-(H_y(x) + \mu_x)}} e^{-(H_y(x) + \mu_x)}
\end{aligned}
$$

## Counting Boolean Functions

With $n$ variables we have $2^n$ possible inputs.
For each input we have 2 choices thus there are $2^{2^n}$ functions.

## Multiplication Approximator

$$
\begin{aligned}
m(u,v) &:= \sigma(u+v) + \sigma(-u-v) -\sigma(u-v) -\sigma(-u+v) \\
       &:= 0\sigma_0 + 0\sigma_1 + .5 \sigma_2 ((u+v)^2 + (-u-v)^2 - (u-v)^2 - (-u+v)^2) \\
       &:= .5 \sigma_2 (u^2 + 2uv +v^2 + u^2 + 2uv + v^2 - (u^2 - 2uv + v^2) - (u^2 -2uv +v^2)) \\
       &:= .5 \sigma_2 ( 2uv +  2uv  + 2uv + + 2uv ) \\
       &:= 4 \sigma_2 uv
\end{aligned}
$$

# Summary

# Pros

# Cons
