# Create vagrant database

In ansible provisioning do the following

```
$ sudo -u postgres createuser -s $USER
$ createdb
$ psql
```

Need to move on to creating a db
