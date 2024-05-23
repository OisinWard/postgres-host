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

# Book exercise 

## Write a query that finds the country name of the Fight Club event

```
select ev.title, cn.country_name
from countries cn
inner join
cities ct
on cn.country_code = ct.country_code
inner join venues vn
on ct.country_code = vn.country_code
and ct.postal_code = vn.postal_code
inner join
events ev
on vn.venue_id = ev.venue_id;
```
