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
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.

# -------------------------------------------------------------------- #

#' @title KEGG circuits
#'
#' @description KEGG circuits extracted using the \code{hipathia} R package
#' (update: October, 2024).
#' @name kegg.circuits
#' @usage kegg.circuits
#' @docType data
#' @format
#' "kegg.circuits" is a list of igraph objects corresponding to the "hsa###" KEGG
#' signalling pathways. This list includes 146 pathways, which are subdivided into "effector"
#' subpathays (i.e., a list  1868 subgraphs with many different input nodes and one output node),
#' and "decomposed" subpathays(i.e., a list 8409 subgraphs with one input node and one output node).
#' @source \url{https://bioconductor.org/packages/hipathia/}
#' @references
#' 
#' Kanehisa M, Goto S (1999). KEGG: kyoto encyclopedia of genes and genomes. 
#' Nucleic Acid Research 28(1): 27-30. 
#' <https://doi.org/10.1093/nar/27.1.29>
#'
#' Hidalgo MR, Cubuk C, Amadoz A, Salavert F, Carbonell-Caballero J, Dopazo J. High
#' throughput estimation of functional cell activities reveals disease mechanisms
#' and predicts relevant clinical outcomes. Oncotarget. 2017 Jan 17;8(3):5160-5178.
#' <https://doi:10.18632/oncotarget.14107>
#'
#' @examples
#' 
#' \donttest{
#' library(SEMgraph)
#' 
#' str(kegg.circuits, max.level=1) #list of 6
#' #str(kegg.circuits$pathigraphs, max.level=1) #list of 145
#' str(kegg.circuits$pathigraphs[[2]], max.level=1) #list of 11
#' 
#' start <- Sys.time()
#' for (k in 2:2) { #k in 1:length(kegg.circuits$pathigraphs)
#'  name <- kegg.circuits$pathigraphs[[k]]$path.name
#'  print(name)
#'  
#'  # (a)-signalling pathway
#'  gk <- kegg.circuits$pathigraphs[[k]]$graph
#'  gplot(gk, main = name)
#'  Sys.sleep(1)
#'  
#'    # (b)-"effector" subpathways
#'    for (j in 1:length(kegg.circuits$pathigraphs[[k]]$effector.subgraphs)) {
#'     cat(" ", j, "\n")
#'     sgj <- kegg.circuits$pathigraphs[[j]]$effector.subgraphs[[j]]
#'     gplot(sgj)
#'     Sys.sleep(1)
#'    }
#' 	
#'     # (c)-"decomposed" subpathways
#'     for (i in 1:length(kegg.circuits$pathigraphs[[k]]$subgraphs)) {
#'      cat("   ", i, "\n")
#'      sgi <- kegg.circuits$pathigraphs[[k]]$subgraphs[[i]]
#'      gplot(sgi)
#'      Sys.sleep(1)
#'     }
#'     cat("\n")
#' }
#' end <- Sys.time()
#' print(end-start)
#'  
#' }
#'
NULL
