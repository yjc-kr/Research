# Table of Contents
[1. Introduction](#1-introduction) \
[2. In vitro clonal expansion from postmortem tissue](#2-in-vitro-clonal-expansion-from-postmortem-tissue)\
[3. Clonal dynamics in early human embryogenesis inferred from somatic mutation](#3-clonal-dynamics-in-early-human-embryogenesis-inferred-from-somatic-mutation)



# 1. Introduction
- p.2
  - 220 types of cells
  - Somatic mutation happens
- p.3
  - Somatic mutation cause mosaicism
    - Single Nucleotide Variations (SNVs)
    - Structural Variation
      - copy # variation (CNVs)
      - transposable element associated insertions / deletions
- p.4
  - Effects of somatic mutation
  - Recently, cancer -> normal cell [^Dou(2018)]
  - Types
    - SNVs
    - aneuploidy
    - CNVs
  - Genome structural variations [^Conrad(2007)], [^Dou(2018)], [^Pang(2010)], [^Zhang(2018)], [^Muyas(2020)]
  - High coverage WGS (Whole Genome Sequencing) widely adopted approach
    - `SAMtools`, `VarScan`, `Mutect`, `Strelka`
- p.5
  - Somatic mutation has been used to understand early embryonic development, cell fate and hematopoiesis [^Lee(2018)], [^Zhou(2013)]
    - Works as 'barcode' [^Woodworth(2017)], [^Gerrits(2010)], [^Baron(2019)]
  - In this study, 
    - Isolated single cell clones of different tissues from warm autopsy to elucidate cell lineage and cell fate
    - Clones of single cells were sequenced, somatic variants of each clone were identified.
      - > Question:  그러면 Somatic variant 정보만으로 lineage 그리나?
    - **__Found that asymmetric contribution of early two embryonic cells in adult tissue.__**
- p.6
  - Also found early embryo development is not coincide with the distance of addult tissue and the adjacent cell in embryo.
  - Showed cellular dynamics during gastrulation in wich ancestral progeny cells are enriched in certain anatomical locations.

> gastrulation: 낭배 형성(Gastrulation)은 배아 발생 초기 단계로, 단일 세포층인 낭배가 세포의 이동과 재배열을 통해 세 개의 배엽(외배엽, 중배엽, 내배엽)을 형성하는 과정

> Progeny cells: A descendant cell derived from a parent cell, such as a stem cell. The term "progeny" refers to the offspring or descendants resulting from a biological process, with progeny cells being the outcome of cell division and differentiation. For example, the daughter cells produced when a stem cell divides are its progeny. 

[^Dou(2018)]: Dou et al.; 2018;
[^Conrad(2007)]: Conrad and Hurles; 2007;
[^Pang(2010)]: Pang et al.; 2010;
[^Zhang(2018)]: Zhang and Vijg; 2018;
[^Muyas(2020)]: Muyas et al.; 2020;
[^Lee(2018)]: Lee-Six et al.; 2018;
[^Zhou(2013)]: Zhou et al.; 2013;
[^Woodworth(2017)]: Woodworth, Girskis, and Walsh; 2017;
[^Gerrits(2010)]: Gerrits et al.; 2010;
[^Baron(2019)]: Baron and van Oudenaarden; 2019;

# 2. In vitro clonal expansion from postmortem tissue

## 2.1. Introduction
- p.8
  - Standard cell culture technique contribute to study about basic cell biology.
  - > Primary cells: directly originated from the tissues.
- p.9
  - Different techniques for cultuvation of cells
    - Organ culture
      - Expensive due to large media + expensive growth factors.
      - Isolation of cells through enzymatic digestion / mechanical disaggregation
        - Fast, but can harm the cells.
        - Need large volume of tissue
    - Organoid culture
      - 3D culture imitating tissue.
      - Appropriate to study tumorigenesis and developmental of organs
- p.10
  - Explant method
    - Good quality + minimal tissue size.
    - Widely used for single cell sequencing, but expensive.

### 2.1.1. Postmortem Autopsy

- p.11
  - Some tissues are already dead (mostly internal organs)
  - Usually don't want to donate whole body.
- p.12
  - Tissue contamination is big hurdle of primary culture. [^Wojcik(2018)]

[^Wojcik(2018)]: Wojeik et al., 2018

### 2.1.2. Primary culture and clonal expansion

- p.12
  - Ceullular heterogeneity of individual cells within cell population can be critical to its functions and fate determination. [^Hu(2016)]
  - So, pure clonal isolation from progenitor cell is important for the identification of the genetical or functional characteristic of mutation. [^Dimond(2018)]
  - Single cell genome sequencing
    - Whole genome amplification
    - Next generation sequencing (NGS)

[^Hu(2016)]: Hu et al., 2016
[^Dimond(2018)]: Dimond, 2018

- p.13
  - Isolation of single cell from tissue is important & challenging
    - Knowledge of cellular structure + techniques
    - Methods
      - Serial dilution, mechanical micromanipulation, flow cytometry associated with cell sorting (FACS), microfluidic method, laser capture microdissection (LCM), ... [^Navin(2014)], [^Navin(2011)], [^Wang(2017)]
  - DNA from single cell is not sufficient for whole genome / NGS
    - Single cell genome amplification techniques
      - Multiple displacement amplification (MDA)
        - low physical coverage of single cell genome -> miss many SNPs [^Hou(2015)]
        - uneven genome coverage, chimeric sequences, contamination [^Yilmaz(2012)]
      - multiple annealing and looping based amplification cycles (MALBAC)
        - extremly high false positive rate for SNV detection [^Lasken(2013)]
      - degenerative-oligonucleotide PCR (DOP-PCR)
    - Can cause errors, resulting artifacts at low frequency. [^Palomo(2017)]
    - > artifact = 인위구조

[^Navin(2014)]: Navin, 2014
[^Navin(2011)]: Navin and Hicks, 2011
[^Wang(2017)]: Wang and Song, 2017
[^Hou(2015)]: Hou et al., 2015
[^Yilmaz(2012)]: Yilmaz and Singh, 2012
[^Lasken(2013)]: Lasken, 2013
[^Palomo(2017)]: Palomo et al., 2017

- p.14
  - Many artifacts will be generated and affect the result of genome analysis.
  - Organoids 
    - Have ability to differentiate and self-organize cells
    - Preserve original in vivo (molecular, structural and functional) characteristics of the tissue
  - For single cell sequencing, organoids are widely used because they can generate sufficient amount of DNA, without amplification. 
  - To obtain enough amount of DNA, cells must be undifferentiated and stemness of cell should remain for long time.
- p.15
  - Another limitation of organoid culture
    - Heterogeneity = 이질성
    - Has risk that the single organoid may not be derived from single cell or clonal.
    - And also different clones grows and dominate the whould cell population.
    - Can cause the problem in reproducibility of organoid culture.
    - New technique emerge.
  - Single cell clonal expansion
    - Cells are manually tracked, so there is less chance of multiclonal.
    - artifacts are lesser than sequencing of amplified cells.
- In this study,
  - first I targeted to setup the optimal condition for development of single cell clonal expansion from warm post-mortem tissues.
  - Then, these clones were be used for whole genome sequencing and genetic analysis.

### 2.1.3. Variant allele frequency

- p.16
  - Variant allele frquency (VAF) 
    - proportion of DNA molecules in sample carrying variants.
    - value infers the variants detection from somatic cells orgerm cells.
    - VAFs of somatic mutation can be detected by two factors
      - Prevalence
        - Distribution of early somatic mutations in development
      - Heterogeneity
        - Diversity of the tissue or sample, selected for sampling
    - Somatic mutations occurred during early embryonic development possess higher VAF than the mutations occurred during later stage of embryo development [^Ju(2017)]

### 2.1.4. Significances of the primary culture and single cell expansion method

- p.17
  - Explant method
    - Suitable for primary culture in caese of minimal size of tissues.
      - Reduce risk of cell loss during enzymatic digestion.

### 2.1.5. Limitations
- p.17
  - Explant method
    - Limitation to epidermal cells, suitable for dermal fibroblast and myofibroblast.
    - attachment of fine chopped tissues during primary culture is difficult
    - 

[^Ju(2017)]: Ju et al., 2017

## 2.2. Materials and Methods

- Tissues
  - Dermal Fibroblast
  - Muscle
  - Cornea
  - Dermal Papilla

## 2.3. Results
- Aim = protocol for single cell clonal expansion of primary cells from postmortem body to detect somatic mutation.
- DNA amount = 6pg / cell
- Clonality of culture in WGS data was verified by VAF of somatic mutations
  - Single cell clones and multiclonal cells were distinguished by peak VAF.
  - Lineage tracing used clones with peak VAF ~= 50%.
    - Others (low peak VAF, low coverage) were excluded.
  
> Passage: PD가 많이 일어나 flask가 꽉 차게 되면 세포가 더 증식할 수 있도록 공간을 넒혀주기 위해 여러개의 flask로 분주해 나가는 과정

# 3. Clonal dynamics in early human embryogenesis inferred from somatic mutation

## 3.1. Introduction

- p.43
  - Human development knowledges originate from rare observation, or extrapolation from model organisms despite the interspecies divergence. [^Gasswer(2014)], [^Mora(2016)], [^Nakamura(2016)], [^Rossant(2015)], [^Xiang(2020)]
  - Spatio temporal and quantitative coordination of early cellular dynamics remain limited.
  - Genomic mutation accumulate in somatic cells, presumably to a substantial rate from the first cellular division [^Ju(2017)]
  - Lineage tracking using somatic mutation [^Stratton(2009)] was implemented in cancer [^Behjati(2014)], [^Gerlinger(2012)], normal blood [^Coorens(2019)] and brain development [^Lee(2018)]
[^Gasswer(2014)]: Gasser et al., 2014
[^Mora(2016)]: Mora-Bermudez et al., 2016
[^Nakamura(2016)]: Nakamura et al., 2016
[^Rossant(2015)]: Rossant, 2015
[^Xiang(2020)]: Xiang et al., 2020
[^Ju(2017)]: Ju et al., 2017
[^Stratton(2009)]: Stratton, Campbell, Futreal, 2009
[^Behjati(2014)]: Behjati et al., 2014
[^Gerlinger(2012)]: Gerlinger et al., 2012
[^Coorens(2019)]: Coorens et al., 2019
[^Lee(2018)]: Lee-Six et al., 2018

## 3.2. Materials and Methods

### 3.2.1. Postmortem tissue sampling

- p.44
  - Primary culture (7 Cadevars)

### 3.2.2. Clonal expansion
- p.45
  - Samples -> Clonally expanded in vivo.

### 3.2.3. Genomic DNA isolation
- p.45
  - Genomic DNA (gDNA) was extracted from cell and tissue (single cell derived clones + tissue + matched blood)

### 3.2.4. Library preparation and whole genome sequencing
- Extract genomic DNA from cells + blood (DNeasy Blood & Tissue Kits)
- WGS by Illumina HiSeq X platform or NovaSeq 6000

### 3.2.5. Variant calling and filtering
- p.46
  - Sequencing reads were trimmed and mapped to human reference genome using `BWA-MEM` algorithm [^Li(2009)]
  - indel realignment & base quality score recalibration using `GATK` [^McKenna(2010)]
  - Initially, indentify base substitution and short indels by `HaplotypeCaller`
  - For every variant, evaluated the number of mutant and wild type reads. 
  - For high-confident somatic variant sets, did additional filtering processes
    1. Sequencing and mapping artifacts of the initially identified variants were filtered out by using locus-specific background error matrix, generated by in-house normal tissue WGS datasets.
    2. If variant had supporting reads in all samples from an individiaul, it is considered as germline variants and filtered it out.
    3. Variants on nuclear DNA w/ following condition were considered to be sequencing artifacts.
       - Variants w/ less than 3 supporting reads
       - Difference in median mapping quality b/w reference & variant reads is greater than 10.
       - Median mapping quality of reference reads < 40
       - Median mapping quality of mutant reads < 40
       - Median number of mismatched bases in mutant reads > 5
       - If more than 90% of supporting reads were soft-clipped or had additional indel, then the variants were removed.
       - If 5 or more samples have only 1 or 2, then variants were removed.

[^Li(2009)]: Lin and Durbin, 2009
[^McKenna(2010)]: McKenna et al., 2010

### 3.2.6. Quality control of samples
- p.47
  - Among 374 clonally expanded cells, 
    - 18 were excluded (low depth of coverage, mean depth < 10)
  - Establish phylogenetic tree.
    - 19 were removed additionally, thought to be multiclonal (mutually exclusive variants simultaneously, and/or low pak VAFs)
  - 3 were excluded (unexplainable high peak VAFs) for data integrity
  - So, total 334 data were used to reconstruct phylogenetic trees.

### 3.2.7. Detect culture associated mutations
- p.48
  - 2 in vitro cultures were performed.
  - Culture-associated mutations can be integrated.
    - Short term culture b/f single cell isolation -> would exist in all cells in clones (clonal).
    - Mutations after single cell isolation -> only parts of cells (subclonal).
  - The latter mutations seem to be rare, because additional VAF peaks < 50% were not detected in most single-cell derived clones & merged VAF distribution of all somatic mutations. (n = 1,688,652)
  - To discriminte clonal / sub-clonal mutations, calculated mutant-cell fraction (MCF) by the same method estimating cancer cell fraction in [^Nik(2012)] and [^Lee(2019)]
  - Mutations w/ MCF < 0.25 in first clone & MCF > 0.25 in second clone simultaneously, were defined as culture-associated mutations.

[^Nik(2012)]: Nik-Zainal et al., 2012
[^Lee(2019)]: Lee et al., 2019

### 3.2.8. Reconstruction of phylogenetic trees
- p.49
  - Assumed that 
    - somatic mutations occuring in separate samples independently by chance
    - recombination events do not happen b/w cell generations.
  - Matrix M = {row = mutations = $\{s_{1}, ..., s_{n}\}$, col = sample = $\{g_{1}, ..., g_{m}\}$
  - If VAF value, $M_{ij} =$ mutation $g_{i}$ and $s_{j}$, larger to threshold, then assign 1, while others 0.
  - Considered mutations shared in all samples = germline variants.
  - After removing gernline variants, grouped all mutations with the same profile into a mutation group according to the sharing pattern b/w samples.
  - Over $\hat{m}$ distinct mutation groups, mutation matrix $M_{\hat{m}n}$ is defined s.t. col = sample, row = mutation group. 
  - From mutation matrix $M_{\hat{m}n}$, reconstruct a phylogenetic tree by graphic theoretic methods[^Gusfield(1991)].
  - Phylogenetic tree
    - Each sample = terminal node of tree, 
    - Each mutation group = branch of the tree,
    - \# mutations = length of the branch.
> Mutations shared by two or more samples, which cannot be rooted to a most recent common ancestor other than fertilized egg, were considered to occur independently in those samples, and therefore were not employed to reconstruct a phylogenetic tree. [무슨 뜻인지 이해 X]

[^Gusfield(1991)]: Gusfield, 1991 

### 3.2.9. Estimating the number of inner cell mass precursor cells and mutation rate in early embryogenesis

> epiblast:  Inner cell mass (ICM) 안에서 위쪽 부분의 cell layer\
> blastomer: 수정란이 분열하면서 생기는 세포들 \
> epiblast precursor: ??

- p.50
  - There are several studies of developmental bias among blastomers at early stage of embryogenesis. 
  - However, little is known regarding the exact details of this critical event, both the precise timing and the number of cells contributing to epiblasts.
  - Used approximate Bayesian computation (ABC) [^Bertorelle(2010)]
    - 4 parameters
      - \# of blastomers contributing to epiblasts ($n$)
      - the stage at which the precursors of epiblasts are chosen ($s$)
      - mutation rate b/f zygotic genome activation(ZGA) ($R_{\leq 2}$)
      - mutation rate a/f zygotic genome activation ($R_{>2}$)
    -  Assumption
       -  zygotic activation occur at 4 cell stage.
       -  All cell have same division rate = simultaneously double at stage s.
       -  All cells at stage s are equally likely to be epiblast precursors.
       -  All cells randomly distribute over embryo b/f precursor selection.
       -  Mutation rates are constant at each time period, follow Poisson distribution.
       -  Cell loss do not occur.
    -  From fertilized egg, cells are doubled at each stage, and somatic mutation accumulate w/ mutation rate (varies b/f and a/f of ZGA). 
    -  At stage $n_{preEPI}$, cell number = $n_{preEPI} \times 2^{15}$.
    -  Among them, $n_{samples}$ cells are selected.
    -  Reconstruct phylogenetic tree by using somatic mutations accumulated in each cell. 
    -  Simulation
       -  it = 500,000 times
       -  Parameters
          -  drawn from uniform distribution w/ following ranges
             -  $n_{preEPI} \in [2,7]$
             -  $s \in [1, 2^{n_{preEPI}-1}]$
             -  $R_{\leq 2} \in [2.0, 10.0]$
             -  $R_{> 2} \in [0.5, 2.0]$
       -  Simulated tree + DB3, DB6, DB8, DB9, DB10, statistics were calculated.
       -  Statistics
          -  \# of shared mutations b/w more than 2 samples = $\displaystyle\Sigma_{branches} m$, where $m$ = \# of mutations assigned to each branch
          -  \# of sample groups split right after fertilization = $n_{1st\ lineage}$
          -  \# of mutations assigned to each first branch
          -  Multifurcation score, defined as $\frac{\Sigma_{nodes} n_{branches}}{n_{nodes}}$, where each denote the number of branches for each node and the total number of nodes, respectively
       -  Result
          -  Showed similar statistics
          -  To estimate posterior distribution of $M_{0}$ and $M_{1}$, used neural network regression algorithm in `abc` of `R`.
  
[^Bertorelle(2010)]: Bertorelle, Benazzo, and Mona, 2010
  
### 3.2.10. Separation of skin tissues into epidermis and dermis

- p.53
  - Techniques

### 3.2.11. Targeted deep sequencing for bulk tissues

- p.53
  - To estimate the contribution of early embryogenic cell lineages in adult tissues, deep targeted sequencing on bulk tissues was performed from various organs.
  - Custom DNA bait sets were designed to include all early embryonic SNVs and several randomly-chosen germline mutations according to the guideline
    - Among 441 early embryonic mutations targeted, 409 mutations have high-quality baiats.
  - Sequences reads were trimmed and mapped to human reference genome by BWA-MEM algorithm. 
  - Reads w/ mapping quality $\geq$ 20 & base quality $\geq$ 20 were included for analysis.

### 3.2.12. Discovery variants in mitochondrial genome

- p.54
  - Because reads from inserted mitochondrial sequence in nuclear DNA (nuclear mitochondrial DNA transfer, NUMT) can be misaligned to chrM, we included reads mapped to chrM only if both paired reads
    - mapped to chrM
    - mapped properly in pair
    - had read length $\leq$ 100 bp
    - no chimeric alignment
  - Filtered mitochondrial variants according to the criteria:
    - VAF cutoff to each each mitochondrial variant by manually inspecting the VAF histogram of corresponding variant histogram over whole samples
      - 0.5% appear to be optimal for majority of variants.
      - For each sample, variants w/ VAF < cutoff were discarded.
    - Average variant position in supporting reads relative to read length should be b/w 10% to 90%. Variants that fall outside were filtered out.
    - Due to the highly repetitive nature of mitochondrial genome, indel mutations appear to be more subject to false positive. So, applied stringent filtering criteria to indel mutations.
      - More than half of supporting reads of an indel mutation should have no additional mutations within 10 bp.
    - Variants fell into following region (error in reference mtDNA) were explicitly removed
      - rCRS 302-315
      - rCRS 513-525
      - rCRS 3105-3109
 
### 3.2.13. Simulating mitochondrial heteroplasmy in maternal line

- p.55
  - mtDNA present in many copies per cell, and inherited through the maternal germline.
  - Single cell has different mtDNA variants, and level can vary considerably b/w cells (mitochondrial heteroplasmy)
  - Attempted to infer the number of clones/levels of mitochondrial heteroplasmy in oocyte using simplified random-drift segregation model.
    - Cell has 1,000 copies of mtDNA
    - Partitioned to two daughter cells w/ equal amount
    - All mtDNA are doubled to reach 1,000 copies of mtDNA in a daughter cells.
    - $f$% of mtDNA in a fertilized egg has same variant (MT-mtDNA)
    - Variant is neutral -> MT-mtDNA replicates at same rate as wild type mtDNA (WT-mtDNA)
  - After 15 generations, $n_{samples}$ are randomly selected. 
  - Calculate 2 statistics
    - proportion of samples harboring MT-mtDNA ($p$)
    - median heteroplasmic level of MT-mtDNA ($h$)
  - it = 500,000 times
  - parameter $\in$ $[10^{-3}, 1]$
  - Estimated posterior distribution of $f$ using neural network regression in ABC

### 3.2.14. Mutational Signature Analysis
- p.57
  - Estimated contributions of mutational signatures to observed mutational spectrum in each sample.
    - Can be achived by solving $\displaystyle\argmin_{h} ||v - W\mathbf{h}||^{2}_{2}$.
      - $v$ = observed counts of each mutation type $v$ from a sample
      - $W$ = pretrained mutational signature matrix
    - used `pracma` in `R`
    - \# of mutational signatures = free parameter, and is to be determined for each sample.
      - Examined the results to sort out from v.3 of COSMIC mutational signature catalogue
      - To avoid overfitting, narrowed handful of signatures by excluding signatures (cosine similarity $\gtrapprox$ 0.9)

### 3.2.15. Copy number variations and structural variations
> 이 section 이해 ?
- p.58
  - Identified somatic genomic rearrangements of WGS samples using a matched blood sample as a control
  - Filtered somatic rearrangements in same way as our prev. report.

### 3.2.16. Timing estimation of copy number gains

- p.59
  - Estimated $n_{mut}$ by $n_{mut} = f_{s} \frac{1}{\rho}[\rho\cdot n_{locus}^{t} + n_{locus}^{n}(1-\rho)]$
    - $f_{s}$: variant allele fraction
    - $\rho$: tumor cellularity
    - $n_{locus}^{t}$: absolute copy numbers in tumor
    - $n_{locus}^{n}$: absolute copy numbers in normal cells
    - The equation simplified into $n_{mut} = f_{s}\cdot n_{locus}$, because $\rho = 1$.
  - $n_{locus} = 2 \times \frac{RD_{locus} / Cov_{sample}}{RD_{locus}^{blood} / Cov_{blood}}$
    - $RD_{locus}$ = read depth of the locus of interest in sample = mean coverage of $Cov_{sample}$
  - The probabilities of pre-amplification ($P_{pre}$), post-amplification ($P_{post}$) were evaluated by using binomial distribution
    - $B_{pre} = \binom{DP}{VC} (\frac{n_{major}}{n_{locus}})^{VC}(1 - \frac{n_{major}}{n_{locus}})^{DP - VC}$
    - $B_{post} = \displaystyle\sum_{i=1}^{n_{major} - 1}\binom{DP}{VC}(\frac{i}{n_{locus}})^{VC}(1 - \frac{i}{n_{locus}})^{DP - VC}$
      - DP = total read depth
      - VC = variant read count
  - Finally, 
    - $P_{pre} = \frac{B_{pre}}{B_{pre} + B_{post}}$
    - $P_{post} = \frac{B_{post}}{B_{pre} + B_{post}}$
  - Then, expected number of pre-amplification substitutions ($E_{pre}$) by $P_{pre}$. 
    - Also, var = $P_{pre} \times (1 - P_{pre})$ for z-scores.
  - Density of pre-amplification mutations in the amplicon ($E_{pre} / (\text{length of amplicon})$) was converted to genome-wide density.
  - Then, translated into physical timescale assuming const. mutation rate.

## 3.3. Results
- p.61
  - 2 experimental conditions are necessary
    - sensitive and precise detection of early mutations
    - extensive investigation of their distribution in various human tissues.
  - Used strategy of capture-recapture of somatic mutations, used in tracking hematopoietic stem cells. (Fig. 1a) [^Coorens(2019)]

[^Coorens(2019)]: Coorens et al., 2019

### 3.3.1. Discovery of early embryonic muttations
- p.61
  - 'Capture'
    - Clonal expansion failed (DB 1, 4, 7)
    - Partially successful (DB 2, 5)
    - Successful (DB 3, 6, 8, 9, 10)
    - From 7 cases
      - 334 clones of few cell types, mostly from skin fibroblasts
    - WGS, avg 25x depth
      - All types of somatic variations explored
  - 'Recapture'
    - Dissect small bulk tissues from organsand anatomical locations encompassing 3 germ layers in successful cases
    - Skin tissue was separated as many as possible
      - seperated into epidermis and dermis.
    - Deep sequencing (911x on avg.)
  - 'Capture' Result
    - identified overall 1,647,684 somatic single base substitutions (SNVs) and 40,968 indels
    - Checked whether variants were acquired during in vitro clonal expansion of single-cells
      - 4 evidences whether true somatic mutations harbored in original single cell
        1. VAFs were distributed around 50% -> VAFs were harbored in all cells of a colony
        2. Mutational spectrums were delineated by biological mutational signatures (rather than signature of artifacts)
        3. Calculated \# of culture-associated mutations w/ 3 pairs of serial single cell expansion in DB10. -> avg. 7.6% of mutations can be culture-associated.
        4. In male, only 3.3% of mutations in X chromosome exhibit heterozygous-like patterns (VAF<0.7)

### 3.3.2. Reconstruction of phylogenetic trees
- p.63
  - From 279 clones w/ whole body clones, detected overall 1,121,975 somatic substitutions and 29,157 somatic indels.
    - 90,142 substitutions and 2,107 indels were shared by 2 or more clones
    - Informative for construction of clonal phylogenetic trees
  - L1, L2 mutation groups <- Few mutations completely partitioned into 2 groups
    - Mutually exclusive in 5 individuals
    - Subclonally found in all bulk polyclonal tissues, w/ VAFs $\approx$ 50% -> Clonal markers for two earlist ancestral cells of DB3 adult tissues
  - Most clone pairs diverged from each other b/f ~ 30 mutations by molecular time
  - Tree
    - Anatomically adjacent cells were not always developmentally more close
    - Defined 488 substitutions and 49 indels as alterations acquired in early embryogenesis.
    - Data shows that indels accumulate from the early embryogenesis, w/ 10% of the base substitution rate, as observed in general cancer tissues
  - The composition of mutational signatures of early embryogenesis differs from that of adult period.

### 3.3.3. Asymmetry and mutation rate in early embryogenesis

- p.65
  - From 5 phylogenetic trees, observed 2 common characteristics in early clonal dynamics
    1. Polytomy was often observed from the second cell generations.
    2. As observed previously, two earlist ancestral cells contribute unequally to adult tissues.
       - e.g. 112 lineages in DB6 were splitted to 6.5:1
    - This result is not caused by random sampling error, because assymmetric VAFs were conserved.
  - Asymmetry level was variable : 1.4:1 to 6.5:1
  - Most of asymmetries were well conserved in bulk tissues
    - balanced sampling of early embryonic lineages in experiment
  - Asymmetry was structured in early foudner cell b/f exponential expansion.
    - Some extent of stochasticity is involved.
  - Exact timing of distinction b/w trophoblast and Inner cell mass (ICM) were unknown.
  - Early mutation rate : 1.4 ~ 6.3 per cell per division (pcpcd) b/f zygotic genome activation (ZGA)
  - a/f ZGA, mutation rate: 0.8 ~ 1.9 pcpcd
    - may be due to the lack of mature DNA repair processes earlier than ZGA in embryos

### 3.3.4. Cell fate primed in early embryonic cells
- p.68
  - Traced contribution of early cells in various bulk tissues
    - from 9~15 mutations by molecular time, VAFs of early mutations are consistently lower in ectodermal tissues than from mesodermal/endodermal.
    - Implies few lineages specifically contributing to ectodermal tissues, but not limited to each -dermal tissue.
  - Compared VAFs of early mutations in left-right axis & upper-lower tissue.
    - asymmetry on l/r in DB3 and DB6
    - asymmetry on cranio-caudal axes
    - l/r asymmetry appear faster than cranio-caudal
  - Contribution of each cell
    - Hematopoietic cell vs. non-hematopoietic cell
      - 5~10 mutations in molecular time
        - e.g. blood contribution ratio = 84:16, 72:28

### 3.3.5. Heteroplasmy of mitochondrial DNA
> Heteroplasmy: 한 세포에 여러개의 소기관 게놈이 존재하는 것

- p.70
  - Heteroplasmy most of then are singleton (similar w/ somatic mutation), but some are not (may derived from ancestor cell, which was heteroplasmy)
  - From random-drift model, heteroplasmic level : mostly 29.8%

### 3.3.6. UV-associated mutations in late period

- p.71
  - has strong correlation.

### 3.3.7. Frequent loss of sex chromosome in normal cells
- p.73
  - Investigated somatically acquired structural variations in clones
  - X, Y are vulnerable in copy number changes (48%)
  - 이해...

## 3,4, Discussionse
