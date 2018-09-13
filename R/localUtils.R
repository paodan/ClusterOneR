#' @import stringr
strSplit = function(x, split, fixed = FALSE, perl = FALSE,
                    useBytes = FALSE, nameRow = FALSE) {
  nm = names(x)
  x = as.character(x)
  # n = length(x)
  # s = strsplit(x, split = split, fixed = fixed,
  #              perl = perl, useBytes = useBytes)
  s = str_split(x, pattern = split, simplify = TRUE)
  # nc = unlist(lapply(s, length))
  # out = matrix("", n, max(nc))
  # for (i in 1:n) {
  #   if (nc[i]) out[i, 1:nc[i]] = s[[i]]
  # }
  if (nameRow && !is.null(nm)){
    row.names(s) = nm
  }
  return(s)
}
