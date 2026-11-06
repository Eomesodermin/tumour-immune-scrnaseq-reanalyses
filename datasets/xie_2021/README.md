# Xie et al. (2021)

> Xie Y, He L, Lugano R, Zhang Y, et al. Key molecular alterations in endothelial cells in human glioblastoma uncovered through single-cell RNA sequencing. *JCI Insight* 2021;6(15):e150861.
> DOI: [10.1172/jci.insight.150861](https://doi.org/10.1172/jci.insight.150861)

| | |
|---|---|
| **Species** | Human |
| **Assay** | 10x Genomics scRNA-seq of CD31+ (MACS-enriched) cells from 4 glioblastomas, tumour core and paired peripheral tissue |
| **Biological system** | Glioblastoma endothelial cells and other CD31+ cells of the tumour microenvironment |
| **Data** | [GEO GSE162631](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE162631) |

## What this analysis does

Rebuilds the endothelial-cell atlas from the raw counts (per-sample Seurat objects, QC, SCT normalisation, anchor integration, clustering, endothelial subset, imputation, marker genes), labels cells with the cell-type and endothelial-subcluster annotations published with the paper, and then asks where **CXCL12** is expressed across cell types and endothelial subclusters, which genes correlate with it in endothelial cells and in all cells, and which genes mark each endothelial subcluster.

## Key finding

No finding is recorded for this analysis. It is an exploratory look at CXCL12 in glioblastoma endothelium, prompted by the CXCL12 question in Giordano et al. (*Nat Commun* 2024), which used a different public dataset (Abdelfattah et al., see [`abdelfattah_2022`](../abdelfattah_2022)). Nothing from this folder appears in that paper.

## Scripts

Run in numeric order from this folder. Each script sets the working directory with `here::here()`, which resolves to this folder via the `.here` marker.

| Script | Title |
|---|---|
| `scripts/01_Xie_etal_Dataset_Processing.Rmd` | Read the GEO counts, QC, integrate, cluster, subset the endothelial cells, impute, find markers |
| `scripts/02_Xie_etal_Endothelial_cell_analysis.Rmd` | Dataset overview, CXCL12 expression and co-expression with CD31, correlation analyses, DEGs |

`scripts/Setup.R` and `scripts/Load_packages.R` hold the shared set-up. `renv.lock` pins the package versions; restore them with `renv::restore()`.

## Data

The raw and processed data are not stored in this repository.

1. Download the per-sample 10x matrices from [GSE162631](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE162631) into `data/Tumour/` and `data/Adjacent_normal/` (git-ignored), one folder per sample.
2. `annotations/` holds the two cell-annotation tables from the paper's figures (`Fig1_all_cell_annoation_info.xlsx`, `Fig2_EC_subclustering_annoation_info.xlsx`). They are the authors' data, reproduced here under the paper's [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) licence, and are read by script 01. The paper itself is not included; read it at the DOI above.

## Citation

Please cite the original study above. If you use this analysis code, see [`CITATION.cff`](../../CITATION.cff) in the repository root.
