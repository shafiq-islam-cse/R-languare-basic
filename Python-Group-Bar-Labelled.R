#
library(tidyverse)
link2data <- "https://raw.githubusercontent.com/cmdlinetips/data/master/gapminder-FiveYearData.csv"
gapminder <- read_csv(link2data)
## Parsed with column specification:
## cols(
##   country = col_character(),
##   year = col_double(),
##   pop = col_double(),
##   continent = col_character(),
##   lifeExp = col_double(),
##   gdpPercap = col_double()
## )

# df <- gapminder %>%
#   filter(year %in% c(1952, 2007)) %>%
#   mutate(year=as.factor(year)) %>%
#   group_by(continent, year) %>%
#   summarize(ave_lifeExp=mean(lifeExp))
df %>%
  ggplot(aes(continent,ave_lifeExp, fill=year))+
  geom_col(position="dodge") +
  labs(title="Stacked Barplot: Side By Side with Labels",
       x="Continent", y= "Mean LifeExp")+
  geom_text(aes(label = round(ave_lifeExp, 1)))

