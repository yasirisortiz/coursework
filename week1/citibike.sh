#!/bin/bash
#
# add your solution after each of the 10 comments below
#

# count the number of unique stations
cut -d, -f5 201402-citibike-tripdata.csv | sort | uniq -c | wc -l

# count the number of unique bikes
cut -d, -f12 201402-citibike-tripdata.csv | sort | uniq -c | wc -l

# count the number of trips per day
cut -d, -f2 201402-citibike-tripdata.csv | cut -d" " -f1 | sort | uniq -c

# find the day with the most rides
cut -d, -f2 201402-citibike-tripdata.csv | cut -d" " -f1 | sort | uniq -c | sort -n -r | head -n1

# find the day with the fewest rides
cut -d, -f2 201402-citibike-tripdata.csv | cut -d" " -f1 | sort | uniq -c | sort -n | head -n2
# or cut -d, -f2 201402-citibike-tripdata.csv | cut -c 2-11 | sort | uniq -c | sort -rnk1 | tail -n2 | head -n1

# find the id of the bike with the most rides
cut -d, -f12 201402-citibike-tripdata.csv | sort | uniq -c | sort -n


# count the number of rides by gender and birth year (fix this one)
cut -d, -f15,14 201402-citibike-tripdata.csv | sort | uniq -c


# count the number of trips that start on cross streets that both contain numbers (e.g., "1 Ave & E 15 St", "E 39 St & 2 Ave", ...)
cut -d, -f5 201402-citibike-tripdata.csv | grep '[0-9].*[^&].*[0-9]' | wc -l

# compute the average trip duration
cut -d, -f1 201402-citibike-tripdata.csv | tr "\"" " " | awk -F"," 'BEGIN{sum=0; counter=-1}{sum=$1+0.0+sum; counter=counter+1}END {print sum/counter}'
# or cut -d, -f1 201402-citibike-tripdata.csv | tr -d '"' | awk -F, '{sum += $1; n++} END { if (n>0) print sum / n}'
#

