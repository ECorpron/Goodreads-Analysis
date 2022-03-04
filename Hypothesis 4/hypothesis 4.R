# Set-up --------
options(scipen = 0)

data = read.csv("./04 Intermediate Files/master_dataset.csv")
#View(data)

fiction = subset(data, genre_category == "fiction", select = rating_count)
#View(fiction)

nonfiction = subset(data, genre_category == "non-fiction", select = rating_count)
#View(nonfiction)

others = subset(data, genre_category == "others", select = rating_count)
#View(others)

# Checking  Variance assumptions ----
var(fiction)
var(nonfiction)
var(others)

# Pairwise testing of fiction against nonfiction and nonfiction against others -------
t.test(fiction, y = nonfiction, var.equal = FALSE)
t.test(fiction, y = others)
