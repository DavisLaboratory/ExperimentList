#' @importFrom S4Vectors coolcat
#' @importFrom methods callNextMethod
.showEL <- function(object) {
  ## header
  classLineage = is(object)
  cat('ExperimentList with ', nexp(object), ' ', classLineage[2], 's\n', sep = '')

  ## Experiment data
  callNextMethod()

  ## experimentData()
  cat('experiments: ', nexp(object), '\n', sep = '')
  coolcat('experimentNames (%d): %s\n', experimentNames(object))
  coolcat('experimentData names (%d): %s\n',colnames(experimentData(object)))

}

#' @export
#' @rdname ExperimentList-methods
setMethod("show", "SummarizedExperimentList", .showEL)
#' @export
#' @rdname ExperimentList-methods
setMethod("show", "RangedSummarizedExperimentList", .showEL)
#' @export
#' @rdname ExperimentList-methods
setMethod("show", "SingleCellExperimentList", .showEL)
#' @export
#' @rdname ExperimentList-methods
setMethod("show", "SpatialExperimentList", .showEL)
