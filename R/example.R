
#' @name example
#' @title example
#' @details
#' Here's the output of `example("path/to/file.png")` - this is what it looks
#' like when it is manually saved to a file. See the 'Examples' section to see
#' what it looks like when `pkgdown` makes it.
#' ![](manual_output.png "result when saving to file system manually")
#' @examples
#' add_lgd <- function(){
#'   rast <- as.raster(hcl.colors(100))
#'   usr <- par("usr")
#'   rasterImage(rast,
#'               xleft = usr[2],
#'               ybottom = usr[3],
#'               xright = usr[2] + .2,
#'               ytop = usr[4],
#'               xpd = TRUE)
#' }
#'
#' par(mfrow = c(2,2))
#' plot(1,1, main = "default")
#' add_lgd()
#'
#' plot(1,1, xlim = c(0,1), ylim = c(0,1), asp = 1, main = "xlim = c(0,1), ylim = c(0,1), asp = 1")
#' add_lgd()
#'
#' plot(1,1, xlim = c(0,1), asp = 1, main = "xlim = c(0,1), asp = 1")
#' add_lgd()
#'
#' plot(1,1, ylim = c(0,1), asp = 1, main = "ylim = c(0,1), asp = 1" )
#' add_lgd()
#'
#' @export
example <- function(filepath){
  add_lgd <- function(){
    rast <- as.raster(hcl.colors(100))
    usr <- par("usr")
    rasterImage(rast,
                xleft = usr[2],
                ybottom = usr[3],
                xright = usr[2] + .2,
                ytop = usr[4],
                xpd = TRUE)
  }

  ragg::agg_png(filepath, width = 1400, height = 866, res = 192, bg = NA)

  par(mfrow = c(2,2))
  plot(1,1, main = "default")
  add_lgd()

  plot(1,1, xlim = c(0,1), ylim = c(0,1), asp = 1, main = "xlim = c(0,1), ylim = c(0,1), asp = 1")
  add_lgd()

  plot(1,1, xlim = c(0,1), asp = 1, main = "xlim = c(0,1), asp = 1")
  add_lgd()

  plot(1,1, ylim = c(0,1), asp = 1, main = "ylim = c(0,1), asp = 1" )
  add_lgd()

  dev.off()
}
