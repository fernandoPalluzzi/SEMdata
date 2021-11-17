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


#' @title Frontotemporal Dementia (FTD) DNA methylation dataset
#'
#' @description DNA methylation (DNAme) profiling by genome tiling array 
#' of 105 FTD patients and 150 healthy controls from peripheral blood 
#' samples (Li et al., 2014).
#' @name ftdDNAme
#' @usage ftdDNAme
#' @docType data
#' @format
#' ftdDNAme is a list of 2 objects:
#' \enumerate{
#' \item "pc1", a data matrix of 256 rows (subjects) and 16560 columns 
#' (genes) containing the value of the first principal component of DNAme 
#' levels, obtained applying a principal component analysis to methylated 
#' CpG sites within the promoter region, for each gene (genes with 
#' unmethylated CpGs in both conditions were discarded);
#' \item "group", a binary group vector of 105 FTD patients (1) and 150 
#' healthy controls (0).
#' }
#' 
#' @source \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE53740}
#'
#' @references
#'
#' Li Y, Chen JA, Sears RL, Gao F et al. An epigenetic signature in 
#' peripheral blood associated with the haplotype on 17q21.31, a risk 
#' factor for neurodegenerative tauopathy. PLoS Genet 2014 Mar;10(3):e1004211.
#' <https://doi.org/10.1371/journal.pgen.1004211>
#'
#' @examples
#' dim(ftdDNAme$pc1)
#' table(ftdDNAme$group)
#'
NULL
