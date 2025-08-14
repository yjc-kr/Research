# Probability distributions on cladograms 

## Information
- Title: Probability distributions on cladograms
- Authors : David Aldous 
- Year : 1996
- doi : https://doi.org/10.1007/978-1-4612-0719-1_1

## Importants
- The most basic model = Beta-splitting model
- Derive Beta-splitting model of $\beta = 0$ (Yule model) and $\beta = -\frac{3}{2}$ (Uniform model) with probability formula.

## Abstract
> By analogy with the theory surrounding the Ewens sampling formula in neutral population genetics, we ask whether there exists a natural one-parameter family of probability distributions on cladograms ("evolutionary trees") which plays a central role in neutral evolutionary theory. Unforunately the answer seems to be "no" - see Conjecture 2. But we can embed the two most popular models into an interesting family which we call "beta-splitting" models. We briefly describe some mathematical results about this family, which exhibits qualitatively different behavior for different ranges of the parameter $\beta$.

## 1. Probability distributions on partitions and neutral population genetics

For each $n$, $\exists$ a finite set of partitions of $\{1, 2, \cdots, n\}$ into unordered families $\{A_{1}, A_{2}, \cdots, A_{k}\}$ of subsets. 
$$
\begin{align*}
\rarr P_{\theta}^{(n)}\{A_{1}, \cdots, A_{k}\} &= \frac{\Gamma(\theta)}{\Gamma(n+\theta)}\displaystyle\prod_{i=1}^{n}[(i-1)!\ \theta]^{m_{i}} \\
&= \text{(Ewens sampling formula)}
\end{align*}
$$
where $m_{i}$ is the number of $A$'s with exactly $i$ elements. (See [^(9)], [^(11)], [^(16)], [^(26)].)

[^(9)]: P. Donnelly and P. Joyce; Weak convergence of population genealogical processes to the coalescent with ages; 1992;
[^(11)]: W. J. Ewens; Population genetics theory: The past and the future; 1990;
[^(16)]: J.F.C. Kingman; Mathematics of Genetic Diversity; 1980;
[^(26)]: S. Tavare; Line-of-descent and genealogical processes and their applications in population genetics models; 1984;

## 2. Phylogenetic trees

> [!Note]
> Cladogram : Phylogenetic tree without information on edge length

### 2.1. Two particular probability distributions on phylogenetic trees

> **Main Question**: If we had the true evolutionary tree of all species, what could we infer about the relative roles of selectivity and neutrality in the pattern of speciations and extinctions?

- Also, in contrast to neutral population genetics, there is no accepted definite notion, at either the conceptual or mathematical level, of "neutral evolution of species".

### 2.2. Two particular probability distributions on phylogenetic trees

- There is a scattered (and mostly mathematically unsophisticated) biological literature on a priori models of random phylogenetic trees. ([^(14)], [^(19)])

[^(14)]: Guyer and Slowinski; Adaptive radiation and the topology of large phylogenies; 1993; 
[^(19)]: Maddison and Slatkin; Null models for the number of evolutionary steps in a character on a phylogenetic tree; 1991;

### 2.3. Search trees

- Such prob. dist. on cladograms is well studied as "random search tree" in CS. ([^(20)])

[^(20)]: H. M. Mahmoud; Evolution of Random Search Trees; 1992;

## 3. Axiomatizing properties of random cladograms

- Seek probability models for "neutral evolution of species"
- Expect $\exist$ single-parameter familty of prob. dist. on cladogram for which
    - random cladogram ($T_{n}$; $n\ge 2$) are in the family iff they satisfy some specified intrinsic compatibility conditions
    - These random cladograms arise from some natural model of species evolving with time.

$\rarr$ Consider a model such as
- At each time $t$, there is a finite number of species alive, starting w/ 1 species at time 0. 
- As time goes by, there is an "event" which is either
  - (extinction) extinct of some species $A$
  - (speciation) split of some species $A$ into $A$ and $A'$.
- Each event of extinction and speciation is equally likely.

## 4. The beta-splitting model

- Suppose that the prob. dist. $\mathbf{q}_{n} = (q_{n}(i); i = 1, 2, \cdots, n-1)$ which is symmetric $(q_{n}(i) = q_{n}(n-i))$.
  - This means the root-split has $i$ elements in the left branch and $n-i$ elements in the right branch, where $i$ is chosen at random according to the distribution $q_{n}$ and the choice of left elements are chosen among choice of $\binom{n}{i}$.
- Interpret this as cladogram by removing left/right markers.

$\rarr$ "Markov Branching Models"

- One-parameter family ($T_{\beta}^{(n)}$) of random cladograms, parametrized by $-2 \le \beta \le \infty$.
  - $-1<\beta<\infty$
    - density func $\rarr$ $f(x) = \frac{\Gamma(2\beta+2)}{\Gamma^{2}(\beta+1)}x^{\beta}(1-x)^{\beta}$, $0 < x < 1$.
    - Then, $q_{n}(i) = \frac{1}{a_{n}(\beta)}\frac{\Gamma(\beta+i+1)\Gamma(\beta+n-i+1)}{\Gamma(i+1)\Gamma(n-i+1)}$, $1\le i\le n-1$. ($a_{n}(\beta)$ is normalizing const.)
  - $-2 < \beta \le -1$
    - $q_{n}(i)$ also holds.
  - $\beta = -2$
    - For fixed $n$ and $\beta \rightarrow -2$, it goes "comb". 
    - So, take comb as the $\beta = -2$ model.

### 4.1. Special cases

- $\beta = \infty$
  - Symmetric binary trie (CS term, see [^(19)] and ch.5 in [^(20)])
- $\beta = 0$
  - $q_{n}(i) = \frac{1}{n-1}$, $1 \le i \le n-1$
  - Yule model = linear pure birth model
  - Induced random cladograms are identical
- $\beta = -\frac{3}{2}$
  - Uniform model
  - $q_{n}(i) = \frac{1}{2}\binom{n}{i} \frac{c_{i}c_{n-i}}{c_{n}}$, $c_{n} = (2n-3)!!$
  - Using $c_{n} = 2^{n-1}\frac{\Gamma(n-\frac{1}{2})}{\Gamma(\frac{1}{2})}$, $q_{n}(i) = \frac{\Gamma(n+1)}{\Gamma(n-\frac{1}{2})\Gamma(\frac{1}{2})}\frac{\Gamma(i-\frac{1}{2})\Gamma(n-i-\frac{1}{2})}{\Gamma(i+1)\Gamma(n-i+1)}$
  - See [^(17)], which studied in combinatories in CS.
  - See [^(2)] and [^(3)] for asymptotics.

[^(17)]: D.E. Knuth; The art of computer programming, vol. 1; 1968;
[^(2)]: D.J. Aldous; The continuum random tree II: an overview; 1991;
[^(3)]: D.J. Aldous; The continuum random tree III; 1993;

### 4.2. Is there an underlying process?

- It has often asserted in biology literature that the uniform model is unsatisfactory because there is no such underlying processes. ([^(14)], [^(19)])
- However, for conditioned critical branching process, they studied a models for neutral evolution of large groups of species. ([^(12)], [^(24)])

[^(12)]: S.J. Gould, D.M. Raup, J.J. Sepkoski, T.J.M. Schopf, and D.S. Simberloff; The shape of evolution: a comparison of real and random clades; 1977;
[^(24)]: D.M. Raup, S.J. Gould, T.J.M. Schopf, and D.S. Simberloff; Stochastic models of phylogeny and the evolution of diversity; 1973;

### 4.3. A data-set

- Used data of bird species and crocodilian species ([^(14)])
- Tried $\beta = 0$, $\beta = -1$, $\beta = -\frac{3}{2}$.
- Data is somewhere b/w Yule model and uniform model, which fits better to $\beta = -1$.
- [^(25)] fits better to $\beta = 0$.
- [^(13)] fits better to $\beta = -\frac{3}{2}$.

[^(25)]: H.M. Savage; The shape of evolution: Systematic tree topology; 1983;
[^(13)]: C. Guyer and J.B. Slowinski; Comparisons between observed phylogenetic topologies with null expectations among three monophyletic lineages; 1991;

## 5. Some asymptotics for the beta-splitting model

Asymptotics of $\beta = -\frac{3}{2}, 0, \infty$ are known or can be proved by routine methods.

### 5.1. Asymptotics of the root-split distribution

If two branches of sizes $i$ and $n-i$ are given and we randomly call these "left" and "right", then the size $L_{n}$ of the left branch has the distribution $q_{n}$ of ch.4, $-1 < \beta < \infty$.

For the size of specific leaf, $B_{n}$, then by exchangeability, $P(B_{n} = i) = \frac{2i}{n}q_{n}(i)$, $1\le i\le n-1$.

As $n \rightarrow \infty$,

- $\beta = \infty$
  - $n^{-1}L_{n} \xrightarrow[]{d} \frac{1}{2}$; $n^{-1}B_{n} \xrightarrow[]{d} \frac{1}{2}$.
- $-1 < \beta < \infty$
  - $n^{-1}L_{n} \xrightarrow[]{d} X_{\beta}$; $n^{-1}B_{n} \xrightarrow[]{d} Y_{\beta}$, where $X_{\beta} \sim Beta(\beta)$ and $Y_{\beta} \sim f(x) = \frac{\Gamma(2\beta+3)}{\Gamma(\beta+1)\Gamma(\beta+2)}x^{\beta+1}(1-x)^{\beta}$.
- $\beta = -1$
  - $\frac{\log{\min{(L_{n}, n-L_{n})}}}{\log{n}} \xrightarrow[]{d} U$; $\frac{\log(n-B_{n})}{\log{n}} \xrightarrow[]{d} U$, where $U$ is $\text{Unif}(0,1)$.
- $-2 < \beta < -1$
  - For each fixed $i\ge 1$, 
$$
P(\min{(L_{n}, n-L_{n}) = i}) \rightarrow \gamma_{\beta}(i);\ P(B_{n} = n-i) \rightarrow \gamma_{\beta}(i),
$$
where $\gamma_{\beta}(i) = \kappa_{\beta}^{-1}\int_{0}^{\infty} \frac{e^{-t}t^{i}}{i!}t^{\beta}dt = \kappa_{\beta}^{-1}\frac{\Gamma(i+1+\beta)}{\Gamma(i+1)}$, with normalizing constant $\kappa_{\beta} = \int_{0}^{\infty}(1-e^{-t})t^{\beta}dt = \frac{\pi}{\Gamma(b)\sin{(\pi(-\beta-1))}}$.
### 5.2. Depth and height statistics

Define the folloiwing numbers
- $\bar{d}$, the average depth of the leaves
- $\tilde{d}$, the depth of the leaf found by starting at the root and recursively choosing the larger branch at each branchpoint (averaging over possibilities if an even split is encountered)
- $d^{*}$, the maximal depth of a leaf (Call the height of cladogram in statistics.)

$\rarr$ $\bar{d} \le \tilde{d} \le d^{*}$.

Then, $E[\bar{D}_{n}]$, $E[\tilde{D}_{n}]$, $E[D_{n}^{*}]$ follows specific distribution each.

## 6. Directions for further study

### 6.1. More on the beta-splitting model

- Q1. Is the mean height also $\Theta(\log^{2}(n))$? What are the spreads of various statistics $D_{n}$, $\bar{D}_{n}$, $\tilde{D}_{n}$, $D_{n}^{*}$? 
- Q2. For general $-2 < \beta < -1$, find the limit processes $H_{\infty}$.

### 6.2. Other one-parameter families

Other families: the chance of a particular cladogram $t$ equals 
$$
    \frac{2^{n-1}}{n!}\displaystyle\prod_{i=3}^{n}(i-1)^{-d_{i}(t)}
$$
where $d_{i}(t)$ is the number of internal nodes with exactly $i$ descendant species.

Then, we can define a familty $(T_{\gamma}^{(n)})$ where $P(T_{\gamma}^{(n)} = t) = a_{n}(\gamma) \displaystyle\prod_{i=3}^{n} (i-1)^{\gamma\cdot d_{i}(t)}$.

So, $\gamma = 0$ is the uniform model, $\gamma = -1$ is the Yule model.

### 6.3. Another characterization question

Note that the Markov branching model satisfies exchangeability, but not necessarily have property (ii) in section 1. (Sampling consistency)

Open problem 1:  Characterize the subclass of Markov branching models which satisfy the sampling consistency property.


