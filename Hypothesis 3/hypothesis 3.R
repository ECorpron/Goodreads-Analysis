# Set-up ---------

hypo3 = read.csv("./04 Intermediate Files/hypothesis3.csv")
View(hypo3)

bulky = subset(hypo3, book_size == "bulky")
average = subset(hypo3, book_size == "average")

z.test(bulky$rating_count, average$rating_count,
       sigma.x = sd(bulky$rating_count),
       sigma.y = sd(bulky$rating_count))
