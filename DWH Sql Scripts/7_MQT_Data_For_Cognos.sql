create materialized view  DataForCognos as
select f.tripid, s.city, f.stationid, f.truckid, f.wastecollected, t.trucktype, d.date
from facttrips f 
left join dimtruck t
on f.truckid = t.truckid
left join dimstation s 
on f.stationid = s.stationid
left join mydimdate d
on f.dateid = d.dateid
order by (tripid , date) ;