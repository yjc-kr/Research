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
> blastomer: 수정란이 분열하면서 생기는 세포들

- p.50
  - There are several studies of developmental bias among blastomers at early stage of embryogenesis. 
  - However, little is known regarding the exact details of this critical event, both the precise timing and the number of cells contributing to epiblasts.
  - Used approximate Bayesian computation (ABC) [^Bertorelle(2010)]
    - 4 parameters
      - \# of blastomers contributing to epiblasts ($n$)
      - the stage at which the precursors of epiblasts are chosen ($s$)
      - mutation rate b/f zygotic genome activation ($R_{\leq 2}$)
      - mutation rate a/f zygotic genome activation ($R_{>2}$)
  -  

[^Bertorelle(2010)]: Bertorelle, Benazzo, and Mona, 2010