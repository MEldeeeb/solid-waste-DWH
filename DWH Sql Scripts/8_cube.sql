-- Create a cube query using the columns year, city, stationid, and average waste collected.
select d.year, s.city, s.Stationid  , avg(f.wastecollected) as total_waste_collected
from facttrips f
left join dimstation s
on f.Stationid = s.Stationid
left join mydimdate d
on f.dateid =  d.dateid
group by cube(d.year, s.city,s.Stationid);