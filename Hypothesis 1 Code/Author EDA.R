# Set-up ---------
authorsInit = read.csv("./04 Intermediate Files/authors_processed.csv")
mainDataSet = read.csv("./04 Intermediate Files/master_dataset.csv")
#View(mainDataSet)
#View(authorsInit)

authors = subset(authorsInit, grepl('^[A-Za-z_ -]+$', author))
#View(authors)

# Number of Male and Female Authors ---------
male = subset(authors, gender == "male")
maleInit = subset(authorsInit, gender == "male")
View(male)

## Interestingly enough, while there are more male authors initially, after removing
## rows that had author names where there were corropted characters, we have more female
## authors.

paste("Number of male authors before removing corrupted names:", nrow(maleInit))
paste("Number of male authors after removing corrupted names:", nrow(male))

female = subset(authors, gender == "female")
femaleInit = subset(authorsInit, gender == "female")
View(female)

paste("Number of female authors before removing corrupted names:", nrow(femaleInit))
paste("Number of female authors after removing corrupted names:", nrow(female))

# Number of books published by men v women -----

## Even though there are more female authors in this data set, men publish far more books
## This appears to be scewed by the author jesse russell, who the data set says has published
## almost 190000 books. Beyond that, there are numerous entries for men and women who have
## hundreds, or even thousands, of published works. My guess is that this includes re-prints,
## re-issues, and the like. As such I don't think this field will give much insighte.

menBooks = sum(male$work_count)
womenBooks = sum(female$work_count)

maleBookProp = menBooks/nrow(male)
femaleBookProp = womenBooks/nrow(female)

paste("Number of books published by men:", menBooks)
paste("The average number of books published by men:", maleBookProp)

paste("Number of books published by women:", womenBooks)
paste("The average number of books published by women:", femaleBookProp)