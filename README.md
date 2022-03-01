# Goodreads-Analysis

For the python notebooks in '03 Source codes', please use the datasets present in '01 Datasets'.

Update 26th Feb: Refer source code 03 master data preparation. The master dataset for statistical analysis is present in Intermediate Files folder. Changes made:
  1.  Removing records containing audio books, poetries, plays, collection/sets of books
  2.  Creating categorical bins for the following:
      - Genre: Fiction, Non-Fiction, others (refer Genre mapping file in the Mapping Files folder)
      - #Pages: Logic present in source code. Up for discussion.
      - Work Exp: Logic present in source code. Up for discussion.

Project Proposal with Brian's feedback is also posted in Documents folder.

Please feel free to utilize the master data for your respective tests. You can even go through the source code and generate data on your end if you observe any fallacy in the code. Do let me know if you encounter any issues!

.
.
.
.


Update 28th Feb: Refer source code 03 master data preparation. The master dataset has been updated with corrected logic for binning author work experience, and book size.
1. author work experience: based on log2 (author work count) distribution; no other way
2. book size: <200 light, 200-400 average, >400 bulky (based on simple google search) - did not want to complicate this step
Other changes:
1. fixed duplicate authors: there were instances of duplicacy in author, 1 author had 2 genders or >1 record of work count. grouped on author name and fixed it

Final comments: Kindly use the "master dataset.csv" directly for statistical tests.
