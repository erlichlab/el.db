### Erlich Lab Database Utilities

This `R` package contains utilities for connecting to and fetching data from the Erlich Lab database.

To connect you need to have a file in your home directory called `.dbconf` with the following format

```
[client]
user = yourusername
passwd = yourpassword
host = thedatabase.nyu.edu
```

Of course, the contents should be changed to reflect the actual credentials and domain name of the database.

Once your .dbconf is setup, you should be able to do

```
library(devtools)
install_git("https://github.com/erlichlab/el.db.git")
library(el.db)
con = elConnect()
out = dbGetQuery(con, 'select * from met.animals limit 20')
head(out)
```


