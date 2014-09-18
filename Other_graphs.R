##############################################################################
# title         : Other_graphs.R;
# purpose       : generate graphs of PRISM data;
# producer      : prepared by A. Sparks;
# last update   : in Los Baños, Philippines, Sep. 2014;
# inputs        : Filtered PRISM data;
# outputs       : graphs of PRISM data;
# remarks 1     : ;
# Licence:      : GPL2;
##############################################################################

# how many observations per Municipality are there submitted so far?
ggplot(visit, aes(x = factor(Municipality))) +
  geom_histogram(aes(colour = factor(Region), fill = factor(Region)), stat = "bin", position = "dodge") +
  scale_y_continuous(name = "Number of visits") +
  scale_x_discrete(name = "Municipality") +
  scale_fill_discrete(name = "Region") +
  scale_colour_discrete(name = "Region") +
  theme(axis.text.x = element_text(angle = 35, hjust = 0.8)) +
  facet_grid(. ~ visit) +
  ggtitle("Survey Visit Number")

# eos