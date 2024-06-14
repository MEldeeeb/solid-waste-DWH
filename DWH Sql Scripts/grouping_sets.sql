-- Create a grouping sets query using the columns stationid, trucktype, total waste collected.
select s.Stationid , t.trucktype , sum(f.wastecollected) as total_waste_collected
from facttrips f
left join dimstation s
on f.Stationid = s.Stationid
left join dimtruck t
on f.Truckid =  t.Truckid
group by grouping sets(s.Stationid, t.trucktype );