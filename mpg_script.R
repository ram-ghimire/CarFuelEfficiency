library(tidyverse)
data(mpg)
# class with color
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy,colour=class))

#class with size
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy,size=class))

#class with trasparency of points (alpha)
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy,alpha=class))

#class with shape of points 
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy,shape=class))

#set aesthetic property of geom manually (all points blue) 
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy),colour="blue")

#But the following code does not change colour to blue, instead it is all red.
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy,colour="blue"))

#mapping aesthetic other than variable name
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy,colour=displ<5))

#facet plot by single variable 
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy))+
  facet_wrap(~class,nrow = 2)

#facet plot by combination of two variables 
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy))+
  facet_grid(drv~cyl)

# mapping with drv and cyl
ggplot(data=mpg)+
  geom_point(mapping = aes(x=drv, y=cyl))

#facet plot by combination of two variables (not in row or column) 
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy))+
  facet_grid(drv~.)

#facet plot by combination of two variables (not in row or column) 
ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy))+
  facet_grid(.~cyl)

#class with smooth line (displ,hwy) 
ggplot(data=mpg)+
  geom_smooth(mapping = aes(x=displ, y=hwy))





