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

#' @title TCGA Breast cancer (BRCA) dataset
#'
#' @description TCGA data from the "data category": Transcriptome Profiling,
#' "data type": Gene Expression Quantification, "experimental strategy": RNA
#' Seq2 and "workflow type": HTSeq-Counts, of 112 brest cancer (BRCA) patients
#' and 112 healthy controls.
#' @name brca
#' @usage brca
#' @docType data
#' @format
#' brca is a list of 2 objects:
#' \enumerate{
#' \item "seq", a data matrix of 224 rows (subjects) and 17327 columns 
#' (genes) containing the RNA transcriptomics profiling from TCGA
#'  pre-processed applying y = log2(x + 0.1) and X = y - med(y);
#' \item "group", a binary group vector of 112 BRCA patients (1) and 112 
#' healthy controls (0).
#' }
#' 
#' @source \url{https://www.cancer.gov/about-nci/organization/ccg/research/structural-genomics/tcga}
#'
#' @references
#'
#' Tomczak K, Czerwińska P, Wiznerowicz M. The Cancer Genome Atlas (TCGA):
#' An Immeasurable Source of Knowledge. Contemporary Oncology 2015; 19 (1A):
#' A68–A77 <https://10.5114/wo.2014.47136>
#'
#' @examples
#' dim(brca$pc1)
#' table(brca$group)
#'
NULL
