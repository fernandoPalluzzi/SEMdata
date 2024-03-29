#  SEMgraph library
#  Copyright (C) 2019-2021 Fernando Palluzzi; Mario Grassi
#  e-mail: <fernando.palluzzi@gmail.com>
#  University of Pavia, Department of Brain and Behavioral Sciences
#  Via Bassi 21, 27100 Pavia, Italy

#  SEMgraph is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.

#  SEMgraph is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.

#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.

# -------------------------------------------------------------------- #


#' @title COVID-19 RNA-seq dataset
#'
#' @description Expression profiling through high-throughput sequencing 
#' (RNA-seq, Illumina NovaSeq 6000) of 72 young human patients 
#' (< 50 years old) with severe forms of COVID-19, 
#' from Carapito et al. (2022).
#' @name covid19
#' @usage covid19
#' @docType data
#' @format
#' covis19 is a data.frame of 15957 rows (genes) and 69 columns (subjects), 
#' including RSEM count data for 23 (C1-23) non-critical and 46 (P1-46) 
#' critical COVID-19 cases. The former group is composed by patients in 
#' a non-critical care ward under supplemental oxygen, while the latter 
#' included patients in the intensive care unit with Acute Respiratory 
#' Distress Syndrome (ARDS), as reported by Carapito et al. 2022.
#'
#' @source \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE172114}
#'
#' @references
#'
#' Carapito R, Li R, Helms J, Carapito C et al. Identification of driver 
#' genes for critical forms of COVID-19 in a deeply phenotyped young 
#' patient cohort. Sci Transl Med 2022 Jan 19;14(628):eabj7521.
#' <https://doi.org/10.1126/scitranslmed.abj7521>
#'
#' @examples
#' summary(covid19)
#' dim(covid19)
#'
NULL
