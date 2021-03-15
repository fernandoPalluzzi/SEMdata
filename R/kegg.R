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


#' @title KEGG signaling pathways collection
#'
#' @description Collection of KEGG signaling pathways extracted using 
#' the \code{graphite} R package (update: April, 2020).
#' @name kegg.pathways
#' @usage kegg.pathways
#' @docType data
#' @format
#' "kegg.pathways" is a list of 306 KEGG signaling pathways, stored as 
#' igraph objects.
#' @source \url{https://www.kegg.jp/kegg}
#' @references
#' 
#' Kanehisa M, Goto S (1999). KEGG: kyoto encyclopedia of genes and genomes. 
#' Nucleic Acid Research 28(1): 27-30. 
#' https://doi.org/10.1093/nar/27.1.29
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
#' kegg.nodes <- unlist(lapply(kegg.pathways, vcount))
#' names(kegg.nodes) <- NULL
#' # Number of edges per pathway
#' kegg.edges <- unlist(lapply(kegg.pathways, ecount))
#' names(kegg.edges) <- NULL
#' # Gene list per pathway
#' kegg.genes <- unlist(lapply(kegg.pathways, function(x) V(x)$name))
#' quantile(kegg.nodes)
#' quantile(kegg.edges)
#' length(unique(kegg.genes))  # Number of unique genes within the dataset
#' 
#' # Loading breast cancer KEGG network
#' i <- which(names(kegg.pathways) == "Steroid biosynthesis")
#' sb.graph <- kegg.pathways[[i]]
#' summary(sb.graph)
#' gplot(sb.graph)
#' 
#' ## }
#'
NULL
