-- Create an MQT named max_waste_stats using the columns city, stationid, trucktype, and max waste collected.
create materialized view IF NOT EXISTS max_waste_stats as 
select s.city, s.Stationid , t.trucktype , max(f.wastecollected) as max_waste_collected
from facttrips f
left join dimstation s
on f.Stationid = s.Stationid
left join dimtruck t
on f.Truckid =  t.Truckid
group by (s.city,s.Stationid, t.trucktype );

select * from max_waste_stats;