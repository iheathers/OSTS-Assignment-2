### SUBMISSIONS CRITERIA


- [ ] This assignment will involve creating two Bash Shell scripts, which will use Unix tools, e.g. Sed, Awk, and/or calls to other Bash Shell scripts.

- [ ] The top level scripts are to be called **preprocess** and **breaches_per_month**.Please make sure you use the specified names, as those are the names which the testing software will use to test your script. 

- [ ] If you choose to use Git (see below), please also include the .git folder. - There is **extra marks** involved with that. 

- [ ] You need to **package** the scripts (and .git folder) into a single submission consisting of a directory that has been compressed with zip or tar, and submit the **zip/tar** file via cssubmit. No other method of submission will be accepted.


### Revisiting Kaggle Catalogue of US Cybersecurity Breaches

- This assignment will make use of the Catalogue of US Cybersecurity Breaches data that you first looked at in Assignment 1, although it will be a different version of that data-file. 

- There are two parts to this assignment. 

- [ ] The first will involve data-cleaning, which is a hugely important first step in almost every data analysis task. 

- [ ] In the second part you will use cleaned data to analyse the distribution of incidents across months.


### Data Cleaning
The Bash Shell script at the front of the data-cleaning task must be called **preprocess**, and will be given the name of a **data-file as its only argument**. The primary data-file you will be using is Cyber_Security_Breaches_noym.tsv, though other data-files will also be tested. You can assume the **interpretation of the fields** will not vary.


##### preprocess needs to achieve the following aims:

- [ ] Perform the usual anti-bugging/sanity-checking of the fields, particularly those which are structured, i.e. not free text.

- [ ] Add a month column (containing numbers 1..12) and a year field (containing 4-digit years), in that order, after the final column (currently Type_of_Breach). The data for these should be taken from the fourth **(Date_of_Breach)** column of the input data-file, and **if there is a range of dates** – indicated by a pair of dates separated by a hyphen – please **use the first of these (the start date)**. Please bear in in mind that this is **US data**, so therefore uses the **US date format: Month/Day/Year**.

- [ ] The Type of Breach column has the **primary breach-type**, sometimes followed by **alternative interpretations**, separated from the primary breach by a **comma or slash** "/". To make the breach-type more uniform **remove everything in field after the first comma or slash.**

- [ ] The Location of Breached Information and the Summary columns can be **dropped**.

- [ ] Any **rows** with **erroneous data** should be **dropped**.

- [ ] New: The **output** of **preprocess** should be sent to **standard output**.

- [ ] Before you get to work on preprocess, I recommend you look at the range of ways the dates have been expressed in the data-file, even though all use the US date format.

