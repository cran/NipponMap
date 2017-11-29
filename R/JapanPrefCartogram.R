### Susumu Tanimura <aruminat@gmail.com>
### Time-stamp: <2017-11-29 18:21:59 umusus>
### Circle cartogram of Japan prefectures

JapanPrefCartogram <- function(col = NULL, axes = FALSE, xlab = "", ylab = "", xlim = NULL,
                               ylim = NULL, main = NULL, ...){
    xyr <- read.csv(text='
"x","y","r"
449,394,28
408,372,17
442,334,17
457,298,20
406,337,16
406,304,16
431,267,19
466,243,22
392,270,19
334,262,19
374,221,31
492,137,29
439,185,41
382,126,35
359,293,20
302,245,16
282,273,17
254,238,15
366,174,15
323,213,20
283,214,19
325,104,24
320,160,32
278,129,19
273,178,17
242,203,21
229,149,34
196,223,28
277,92,17
243,95,16
154,213,14
145,184,15
181,176,19
152,147,22
116,166,17
212,102,15
184,124,16
154,107,17
183,90,15
82,136,27
44,115,15
54,83,17
90,90,19
120,112,17
145,74,16
90,52,18
70,21,18')
    if (is.null(xlim)) 
        xlim <- extendrange(xyr$x, f = 0.1)
    if (is.null(ylim)) 
        ylim <- extendrange(xyr$y, f = 0.1)
    plot(NA, NA, type = "n", xlim = xlim, ylim = ylim, xlab = xlab, 
         ylab = ylab, main = main, axes = axes)
    symbols(xyr$x, xyr$y, circles = xyr$r, bg = col, asp = 1,
            inches = FALSE, xlab = xlab, ylab = ylab,
            add = TRUE, ...)
    return(invisible(xyr[ ,1:2]))
}
