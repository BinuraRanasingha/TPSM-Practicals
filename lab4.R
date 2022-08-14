library(ggplot2)
ggplot(diamonds)
ggplot(diamonds, aes(x=carat))
ggplot(diamonds, aes(x=carat, y=price))
ggplot(diamonds, aes(x=carat, color=cut))
ggplot(diamonds, aes(x=carat), color="steelblue")

ggplot(diamonds,aes(x=carat, y=price, color=cut)) + geom_point() + geom_smooth()
ggplot(diamonds) + geom_point(aes(x=carat, y=price, color=cut)) + geom_smooth(aes(x=carat, y=price, color=cut))

ggplot(diamonds) + geom_point(aes(x=carat, y=price, color=cut)) + geom_smooth(aes(x=carat, y=price))
ggplot(diamonds, aes(x=carat,y=price)) + geom_point(aes(color=cut)) + geom_smooth()

ggplot(diamonds, aes(x=carat, y=price, color=cut ,shape=color)) + geom_point()

gg <- ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + labs(title="Scatterplot", x="Carat", y="Price")
print(gg)

gg1 <- gg + theme(plot.title = element_text(size=30,face="bold"),
                  axis.text.x = element_text(size=15),
                  axis.text.y = element_text(size=15),
                  axis.title.x = element_text(size=25),
                  axis.title.y = element_text(size=25))
scale_color_discrete(name="Cut of diamonds")
print(gg)

gg1 + facet_wrap(- cut, ncol=3)

gg1 + facet_wrap(color ~ cut)

plot1 <- ggplot(mtcars, aes(x=cyl)) + geom_bar() + labs(title="Frequency bar chart")
print(plot1)

df <- data.frame(var=c("a","b","c"),nums=c(1:3))
plot2 <- ggplot(df ,aes(x=var, y=nums)) + geom_bar(stat="identity")
print("plot2")
plot2

library(gridExtra)
grid.arrange(plot1, plot2, ncol=2)

df <- data.frame(var=c("a","b","c"), nums=c(1:3))
ggplot(df, aes(x=var, y=nums)) + geom_bar(stat="identity") + coord_flip() + labs(title="Coordinates are flipped")

ggplot(diamonds, aes(x=carat,y=price,color=cut)) + geom_point() + geom_smooth() + coord_cartesian(ylim=c(0,10000)) + labs(title="Coord_cartesian zoomed in!")

ggplot(diamonds, aes(x=price, y=price + runif(nrow(diamonds),100,10000),color=cut)) + geom_point() + geom_smooth() + coord_equal()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + geom_smooth() + theme_bw() + labs(title="lbw Theme")

p1 <- ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + geom_smooth() + theme(legend.position="none") + labs(title="legend.position='none'")
p2 <- ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + geom_smooth() + theme(legend.position = "top") + labs(title="legend.position='top'")
p3 <- ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + geom_smooth() + labs(title="legend.position=''coords inside the plot") + theme(legend.justification = c(1,0), legend.position=c(1,0))
grid.arrange(p1,p2,p3,ncol=3)

library(ggplot2)
ggplot(mtcars, aes(x=cyl)) + geom_bar(fill='darkgoldenrod2') + theme(panel.background=element_rect(fill='steelblue'), panel.grid.major=element_line(colour="firebrick", size=3), panel.grid.minor=element_line(colour="blue", size=1))

ggplot(mtcars,aes(x=cyl)) + geom_bar(fill="firebrick") + theme(plot.background=element_rect(fill="steelblue"),plot.margin=unit(c(2,4,1,3),"cm"))

library(grid)
my_grob = grobTree(textGrob("This text is at x=0.1 and y=0.9, relative!\n Anchor point is a t 0,0", x=0.1, y=0.9, hjust = 0, gp=gpar(col="firebrick", fontsize=25, fontface="bold")))
ggplot(mtcars, aes(x=cyl)) + geom_bar() + annotation_custom(my_grob) + labs(title="Annotation on Example")