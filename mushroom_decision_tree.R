install.packages("party")
library(party)

# First, clear all previous stuff out of the workspace...
rm(list = ls());

mushdata <- read.csv("mushrooms.csv", header = TRUE)
summary(mushdata)

#analyze from 
#Vision(cap / gill/ ring/ veil)
#Smell(odor)
#Habitat(habitat)



#Vision-cap
png(file = "dtree cap_shape.png")
output.tree_vision_cap_shape <- ctree(class~ cap.shape, data = mushdata)
plot(output.tree_vision_cap_shape)
dev.off()

output.tree_tactile_cap <- ctree(class~cap.surface , data = mushdata)
plot(output.tree_tactile_cap)
#insignificant

png(file = "dtree cap_color.png")
output.tree_vision_cap <- ctree(class~cap.color, data = mushdata)
plot(output.tree_vision_cap)
dev.off()



#Vision-gill
png(file = "dtree gill.png")
output.tree_vision_gill <- ctree(class~gill.spacing + gill.attachment + gill.size , data = mushdata)
plot(output.tree_vision_gill)
dev.off()
#too much attributes in gill.color

#Ring
png(file = "dtree ring.png")
output.tree_vision_ring <- ctree(class~ring.type + ring.number, data = mushdata)
plot(output.tree_vision_ring)
dev.off()

#Veil 
png(file = "dtree veil.png")
output.tree_vision_veil <- ctree(class~veil.color, data = mushdata)
plot(output.tree_vision_veil)
dev.off()


#Smell
png(file = "dtree odor.png")
output.tree <- ctree(class~ odor, data = mushdata)
plot(output.tree)
dev.off()


#Habitat
png(file = "dtree habitat.png")
output.tree_habitat <- ctree(class~ habitat, data = mushdata)
plot(output.tree_habitat)
dev.off()