### Susumu Tanimura <aruminat@gmail.com>
### Time-stamp: <2017-11-29 17:17:54 umusus>
### Draw very simplified Japan map with prefecture boundaries.

JapanPrefMap <- function(col = NULL, inset = TRUE, ...){
    shp <- system.file("shapes/jpn.shp", package="NipponMap")[1]
    m <- read_sf(shp)
    st_crs(m) <- "+proj=longlat +datum=WGS84"
    if(inset) {
        m$geometry[[47]] <- m$geometry[[47]] + c(7, 14)
        ylim <- c(31, 45); xlim <- c(130, 149)
    } else {
        ylim <- NULL; xlim <- NULL
    }
    plot(st_geometry(m), col = col, xlim = xlim, ylim = ylim, ...)
    if(inset){
        lines(x = c(132, 135, 137, 137),
              y = c(38, 38, 40, 43))
    }
    m.c <- suppressWarnings(st_centroid(m))
    return(invisible(st_coordinates(m.c))) 
}

