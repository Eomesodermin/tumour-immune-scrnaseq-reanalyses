# Tumour-infiltrating immune cell scRNA-seq reanalyses

Reanalyses of six public tumour immune-cell atlases and cohorts (a pan-cancer NK atlas, a harmonised pan-cancer TIL collection, a pan-cancer immune atlas, glioma, head and neck cancer and melanoma), used to ask where NK/T-cell genes and signatures of interest (NKG7, TLR2, CD160, CD226/DNAM-1, DGAT) are expressed in tumours.

[![parse-check](https://github.com/Eomesodermin/tumour-immune-scrnaseq-reanalyses/actions/workflows/parse-check.yaml/badge.svg)](https://github.com/Eomesodermin/tumour-immune-scrnaseq-reanalyses/actions/workflows/parse-check.yaml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Datasets

| Folder | Study | Species | Assay | Data |
|---|---|---|---|---|
| [`tang_2023`](datasets/tang_2023) | Tang et al. (2023) [DOI](https://doi.org/10.1016/j.cell.2023.07.034) | Human | Integrated scRNA-seq atlas (160,011 NK cells, 716 patients, 24 cancer types) | [GEO GSE212890](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE212890); processed atlas at [Zenodo 8275845](https://zenodo.org/records/8275845) |
| [`borcherding_utility`](datasets/borcherding_utility) | Borcherding (uTILity collection) [DOI](https://doi.org/10.5281/zenodo.17977149) | Human | Harmonised collection of public scRNA-seq with paired scTCR-seq (28 studies, 13 tissues, >2.6 M cells) | [Zenodo 17977149](https://zenodo.org/records/17977149); processing code at [ncborcherding/utility](https://github.com/ncborcherding/utility) |
| [`nieto_2021`](datasets/nieto_2021) | Nieto et al. (2021) [DOI](https://doi.org/10.1101/gr.273300.120) | Human | Integrated 10x Genomics atlas (>500,000 cells, 13 cancer types) | [Zenodo 4263972 (Seurat and AnnData objects; the full `TICAtlas.rds` is ~24 GB)](https://zenodo.org/records/4263972) |
| [`abdelfattah_2022`](datasets/abdelfattah_2022) | Abdelfattah et al. (2022) [DOI](https://doi.org/10.1038/s41467-022-28372-y) | Human | 10x Genomics scRNA-seq (~200k cells) | [GEO GSE182109](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE182109) |
| [`cillo_2020`](datasets/cillo_2020) | Cillo et al. (2020) [DOI](https://doi.org/10.1016/j.immuni.2019.11.014) | Human | 10x Genomics scRNA-seq | [GEO GSE139324](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE139324) |
| [`sadefeldman_2018`](datasets/sadefeldman_2018) | Sade-Feldman et al. (2018) [DOI](https://doi.org/10.1016/j.cell.2018.10.038) | Human | Smart-seq2 scRNA-seq | [GEO GSE120575](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE120575) |

Machine-readable version: [`datasets.csv`](datasets.csv).

## How the analyses are organised

Every folder under `datasets/` is a self-contained R project (Seurat-based):

```
datasets/<study>/
├── README.md        study citation, accession, what the analysis does, script index
├── scripts/ or R/   numbered .Rmd notebooks, run in order
├── .here            marks the folder as the project root for here::here()
└── renv.lock        pinned package versions, where available
```

Shared helper functions live in the companion package [`r-utility-functions`](https://github.com/Eomesodermin/r-utility-functions).

## Reproducing an analysis

1. Download the data listed for the study into `datasets/<study>/data/` (this directory is git-ignored).
2. Open the folder as an R project (or `setwd()` into it) and, where an `renv.lock` is present, run `renv::restore()`.
3. Knit the numbered notebooks in order.

The repository does not bundle the raw data. A CI job checks that every R script and notebook parses; it does not re-run the analyses, which need the large public datasets.

## Provenance and scope

These are exploratory reanalyses of third-party public data, written as part of my NK and T-cell research, and not the original authors' analyses. Please cite the original studies (DOIs above) when using their data.

## Licence and citation

Code is released under the [MIT licence](LICENSE). Citation metadata: [`CITATION.cff`](CITATION.cff).

Author: [Dillon Corvino](https://dilloncorvino.com) · [GitHub](https://github.com/Eomesodermin)
