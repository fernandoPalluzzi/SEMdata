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


#' @title Reactome pathways collection
#'
#' @description Collection of Reactome signaling pathways extracted using 
#' the \code{graphite} R package (update: April, 2020).
#' @name reactome.pathways
#' @usage reactome.pathways
#' @docType data
#' @format
#' "reactome.pathways" is a list of 1641 Reactome pathways, stored as 
#' igraph objects.
#' @source \url{https://reactome.org}
#' @references
#' 
#' Jassal B, Matthews L, Viteri G, Gong C, Lorente P, Fabregat A, 
#' Sidiropoulos K, Cook J, Gillespie M, Haw R, Loney F, May B, Milacic M, 
#' Rothfels K, Sevilla C, Shamovsky V, Shorser S, Varusai T, Weiser J, 
#' Wu G, Stein L, Hermjakob H, D'Eustachio P. 
#' The reactome pathway knowledgebase. 
#' Nucleic Acids Res. 2020 Jan 8;48(D1):D498-D503. 
#' doi: 10.1093/nar/gkz1031. PubMed PMID: 31691815.
#' 
#' Martini P, Sales G, Massa MS, Chiogna M, Romualdi C. Along signal paths: 
#' anempirical gene set approach exploiting pathway topology. 
#' Nucleic Acids Res. 41(1):e19.
#' https://doi.org/10.1093/nar/gks866.
#' 
#' @examples
#'
#' ## NOT RUN ## {
#' 
#' # Number of nodes per pathway
#' react.nodes <- unlist(lapply(reactome.pathways, vcount))
#' names(react.nodes) <- NULL
#' # Number of edges per pathway
#' react.edges <- unlist(lapply(reactome.pathways, ecount))
#' names(react.edges) <- NULL
#' # Gene list per pathway
#' react.genes <- unlist(lapply(reactome.pathways, function(x) V(x)$name))
#' quantile(react.nodes)
#' quantile(react.edges)
#' length(unique(react.genes))  # Number of unique genes within the dataset
#' 
#' # Loading breast cancer KEGG network
#' i <- which(names(reactome.pathways) == "NOTCH4 Intracellular Domain Regulates Transcription")
#' notch4.graph <- reactome.pathways[[i]]
#' summary(notch4.graph)
#' gplot(notch4.graph)
#' 
#' ## }
#'
NULL
