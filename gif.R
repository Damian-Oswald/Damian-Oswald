# attach packages to search path
library(animation)

# set animation options
ani.options(ani.width = 1200,
            ani.height = 600,
            ani.res = 200,
            interval = 0.05)

# write GIF
saveGIF(expr = {
  for (i in seq(-pi,pi,l=5)[-1]) {
    par(bg = rgb((cos(i)+1)/2, (sin(i)+1)/2, (sin(i)*cos(i)+1)/2))
    plot(NA, ylim = c(-1,1), xlim = c(-1,1), axes = FALSE, ylab = "", xlab = "")
    text(x = 0, y = 0, label = "Hello there, and\nwelcome to my\nGitHub page!", font = 2, cex = 3, xpd = NA, family = "mono", col = rgb((sin(i)*cos(i)+1)/4+0.5, (cos(i)+1)/4+0.5, (sin(i)+1)/4+0.5))
  }
}, movie.name = "hello.gif")