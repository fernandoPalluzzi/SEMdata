# SEMdata
High-throughput sequencing data, pathways and reference networks to get trained with the **R** package [**SEMgraph**](https://github.com/fernandoPalluzzi/SEMgraph). It includes:

Data:
- **Amyotrophic Lateral Sclerosis** (ALS) RNA-seq dataset of 139 cases and 21 healthy controls, from Tam O.H. *et al.*, 2019 (GEO accession: [**GSE124439**](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE124439)).
- **Frontotemporal Dementia** (FTD) DNA methylation dataset 150 cases and 150 healthy controls, from Li Y. *et al.*, 2014 (GEO accession: [**GSE53740**](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE53740)). 
- **COVID-19** RNA-seq dataset of 46 critical and 23 non-critical COVID-19 cases in young patients, from Carapito R. *et al.*, 2022 (GEO accession: [**GSE172114**](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE172114).
- **Breast Cancer** RNA-seq dataset of 112 BRCA patients and 112 healthy controls from [**TCGA**](https://www.cancer.gov/about-nci/organization/ccg/research/structural-genomics/tcga).
- **Flow cytometry** data and causal model from [Sachs *et al.*, 2005](https://www.science.org/lookup/doi/10.1126/science.1105809) available in [**SEMgraph**](https://github.com/fernandoPalluzzi/SEMgraph).
&nbsp;

Pathways:
- **KEGG pathways**. A comprehensive list of igraph objects for 227 [**KEGG**](https://www.genome.jp/kegg/) pathways (last update: November 2021).
- **KEGG circuits**. A comprehensvive list of igraph objects for 146 KEGG signalling pathways, which are subdivided into "effector" subpathays (i.e., a list  1868 subgraphs with many different input nodes and one output node), and "decomposed" subpathays (i.e., a list 8409 subgraphs with one input node and one output node) extracted from R package [**hipathia**](https://bioconductor.org/packages/hipathia/) in Bioconductor project (last update: October, 2024).
- **Reactome pathways**. A comprehensive list of igraph objects for 1641 [**Reactome**](https://reactome.org/) pathways (last update: April 2020).
&nbsp;

Reference networks:
- **KEGG**, an igraph object of 5007 nodes and 44755 edges (41122 directed and 3164/2 = 1582 bidirected) corresponding to the union of 225 KEGG pathways (update: Nov 2021).
- **Reactome**,  an igraph object of 9762 nodes and 416128 edges (109268 directed and 306860/2 = 153430 bidirected) corresponding to the union of 1641 Reactome pathways (update: Apr 2020).
- **DO**, an igraph network object of 6576 nodes and 6923 directed edges, corresponding to the [Disease Ontology](https://disease-ontology.org/downloads/)  terms (update: Feb, 2020).
- **GOBP**, an igraph network object of 27685 nodes and 58979 directed edges, corresponding to the [Gene Ontology](https://geneontology.org/docs/download-ontology/) *Biological Process* terms (update: Feb, 2020).
- **GOCC**, an igraph network object of 3793 nodes and 7116 directed edges, corresponding to the [Gene Ontology](https://geneontology.org/docs/download-ontology/) *Cellular Component* terms (update: Feb, 2020).
- **GOMF**, an igraph network object of 9933 nodes and 12114 directed edges, corresponding to the [Gene Ontology](https://geneontology.org/docs/download-ontology/) *Molecular Function* terms (update: Feb, 2020)
- **STRING**, an igraph network object of 10829 nodes and 213445 edges (undirected), corresponding to the [STRING](https://string-db.org/) interactome (version 10.5).
&nbsp;

Pathways and reference networks are freezed to benchmarked versions for **SEMgraph**. If you would like to get the latest version of your favourite database, you can use either the R package [**graphite**](https://bioconductor.org/packages/release/bioc/html/graphite.html) in Bioconductor project, or the wrapper function **loadPathways()** available in **SEMgraph** v.1.2.4 or above. 

## Installation

**SEMdata** can be installed in **R** with the following line (it requires **SEMgraph** first):

```{r, echo = FALSE}
devtools::install_github("fernandoPalluzzi/SEMgraph")

devtools::install_github("fernandoPalluzzi/SEMdata")
```
