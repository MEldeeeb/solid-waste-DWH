-- Create a rollup query using the columns year, city, stationid, and total waste collected.
select d.year, s.city, s.Stationid  , sum(f.wastecollected) as total_waste_collected
from facttrips f
left join dimstation s
on f.Stationid = s.Stationid
left join mydimdate d
on f.dateid =  d.dateid
group by rollup(d.year, s.city,s.Stationid);