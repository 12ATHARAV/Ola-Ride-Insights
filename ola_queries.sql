CREATE TABLE bookings (
    Date TEXT,
    Time TEXT,
    Booking_ID TEXT PRIMARY KEY,
    Booking_Status TEXT,
    Customer_ID TEXT,
    Vehicle_Type TEXT,
    Pickup_Location TEXT,
    Drop_Location TEXT,
    V_TAT TEXT,
    C_TAT TEXT,
    Canceled_Rides_by_Customer TEXT,
    Canceled_Rides_by_Driver TEXT,
    Incomplete_Rides TEXT,
    Incomplete_Rides_Reason TEXT,
    Booking_Value INT,
    Payment_Method TEXT,
    Ride_Distance INT,
    Driver_Ratings TEXT,
    Customer_Rating TEXT,
    Vehicle_Images TEXT
);

select * from bookings;

-- 1. Retrieve all successful bookings:

create view successful_bookings as
select * from bookings
where booking_status = 'Success';

select * from successful_bookings;


-- 2. Find the average ride distance for each vehicle type:

create view average_ride_distance_for_each_vehicle_type as
select vehicle_type, avg(ride_distance) as avg_ride_distance
from bookings
group by vehicle_type;

select * from average_ride_distance_for_each_vehicle_type;


-- 3. Get the total number of cancelled rides by customers:

create view total_number_of_cancelled_rides_by_customers as
select count(*) from bookings
where booking_status = 'Canceled by Customer';

select * from total_number_of_cancelled_rides_by_customers;


-- 4. List the top 5 customers who booked the highest number of rides:

create view top_5_customers_who_booked_the_highest_number_of_rides as
select customer_id, count(booking_id) as total_rides
from bookings
group by customer_id
order by total_rides desc limit 5;

select * from top_5_customers_who_booked_the_highest_number_of_rides;


-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:

create view number_of_rides_cancelled_by_drivers_due_to_personal_and_car_related_issues as
select count(*)
from bookings
where canceled_rides_by_driver = 'Personal & Car related issue';

select * from number_of_rides_cancelled_by_drivers_due_to_personal_and_car_related_issues;


-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

create view maximum_and_minimum_driver_ratings_for_Prime_Sedan_bookings as
select vehicle_type, min(driver_ratings) as min_driver_ratings, max(driver_ratings) as max_driver_ratings
from bookings
where vehicle_type = 'Prime Sedan' and driver_ratings <> 'null'         -- excluding all rows where driver rating is null
group by vehicle_type;

select * from maximum_and_minimum_driver_ratings_for_Prime_Sedan_bookings;


-- 7. Retrieve all rides where payment was made using UPI:

create view rides_where_payment_was_made_using_UPI as
select * 
from bookings 
where payment_method = 'UPI';

select * from rides_where_payment_was_made_using_UPI;


-- 8. Find the average customer rating per vehicle type:

create view average_customer_rating_per_vehicle_type as
select vehicle_type, avg(customer_rating::numeric) as avg_customer_rating
from bookings
where customer_rating <> 'null'       --this will exclude all rows where rating is null
group by vehicle_type;

select * from average_customer_rating_per_vehicle_type;


-- 9. Calculate the total booking value of rides completed successfully:

create view total_booking_value_of_rides_completed_successfully as
select sum(booking_value) as sum_booking_value
from bookings
where booking_status = 'Success';

select * from total_booking_value_of_rides_completed_successfully;


-- 10. List all incomplete rides along with the reason

create view incomplete_rides_along_with_the_reason as
select booking_id, customer_id, incomplete_rides, incomplete_rides_reason
from bookings
where incomplete_rides = 'Yes';

select * from incomplete_rides_along_with_the_reason;
