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
  - test