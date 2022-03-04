# Set-up --------
library("BSDA")
options(scipen = 0)

data = read.csv("./04 Intermediate Files/master_dataset.csv")
#View(data)

fiction = subset(data, genre_category == "fiction")

nonfiction = subset(data, genre_category == "non-fiction")
#View(nonfiction)


fb = subset(fiction, book_size == "bulky")
na = subset(nonfiction, book_size == "average")
nb = subset(nonfiction, book_size == "bulky")
fa = subset(fiction, book_size == "average")

# Checking  Variance assumptions ----
hist(fb$rating_count)
hist(na$rating_count)
hist(nb$rating_count)
hist(fa$rating_count)

# Pairwise testing -------
z.test(fb$rating_count, nb$rating_count, alternative='two.sided', mu = 0, sd(fb$rating_count), sd(nb$rating_count),conf.level=.95)
z.test(fb$rating_count, fa$rating_count, alternative='two.sided', mu = 0, sd(fb$rating_count), sd(fa$rating_count),conf.level=.95)
z.test(nb$rating_count, na$rating_count, alternative='two.sided', mu = 0, sd(nb$rating_count), sd(na$rating_count),conf.level=.95)
