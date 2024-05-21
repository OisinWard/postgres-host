# I wonder if I could save the database state in between rebuilds

# Add tables for the book seven databases in seven days

Also run through the examples.

# Starting to look at pg_class

```
select * from pg_class 
where relname in
(
'events',
'venues',
'cities',
'countries'
)
\gx
```
