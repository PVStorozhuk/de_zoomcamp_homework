-- Question 3: Count records

select count(*)
from green_taxi_data_2019
where lpep_pickup_datetime::date = '2019-01-15'



-- Question 4: Largest trip for each day

select *
from green_taxi_data_2019
order by trip_distance desc

-- Question 5: The number of passengers 

select passenger_count, count(*)
from green_taxi_data_2019
where lpep_pickup_datetime::date = '2019-01-01'
group by passenger_count


-- Question 6: Largest tip 

select t1.*, t2.* , t3."Zone" as dozone
from green_taxi_data_2019 t1 
left join 
zones_test t2 
on t1."PULocationID" = t2."LocationID"  
left join 
zones_test t3
on t1."DOLocationID" = t3."LocationID"  
where  t2."Zone" = 'Astoria'
order by tip_amount desc 



 

