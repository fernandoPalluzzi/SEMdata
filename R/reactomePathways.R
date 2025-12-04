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
#' @source \url{https://reactome.org/}
#' @references
#' 
#' Jassal B, Matthews L, Viteri G, Gong C, Lorente P, Fabregat A, 
#' Sidiropoulos K, Cook J, Gillespie M, Haw R, Loney F, May B, Milacic M, 
#' Rothfels K, Sevilla C, Shamovsky V, Shorser S, Varusai T, Weiser J, 
#' Wu G, Stein L, Hermjakob H, D'Eustachio P. 
#' The reactome pathway knowledgebase. Nucleic Acids Res. 2020 Jan 8;48(D1):D498-D503. 
#' <https://doi.org/10.1093/nar/gkz1031>
#' 
#' Sales G, Calura E, Cavalieri D, Romualdi C (2012). graphite - a Bioconductor
#' package to convert pathway topology to gene network. BMC Bioinformatics 2012,13:20.
#' <https://doi.org/10.1186/1471-2105-13-20>
#' 
#' @examples
#'
#' \donttest{
#' library(SEMgraph)
#' 
#' # Reactome pathways
#' names(reactome.pathways)
#'
#' # Loading NOTCH4 graph
#' i <- which(names(reactome.pathways) == "NOTCH4 Intracellular Domain Regulates Transcription")
#' ig <- reactome.pathways[[i]]
#' properties(ig)
#' gplot(ig, l="dot", psize=50, main=names(reactome.pathways[i]))
#' 
#' }
#'
NULL
