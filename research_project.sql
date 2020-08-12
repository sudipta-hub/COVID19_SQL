create database india_covid19;
 create table data
 (
 id	 int,
 unique_id int,
 government_id	char(100),
 diagnosed_date	char(100),
 age	int,
 gender	char(50),
 detected_city	char(100), 
 detected_city_pt char(100),
 detected_district	char(100),
 detected_state	char(100),
 nationality	char(50),
 current_status	char(100),
 status_change_date char(100),
 notes char(100),	
 current_location char(100),
 current_location_pt char(100),
 contacts char(50)
);
select * from data;

/* people are infected by covid19 each gender*/
select count(*) as total_infected, gender
from data
group by gender;

/* female >20*/
select gender, count(age)
from data
where gender='female' and age>20;
/*female <20*/
select gender, count(age) 
from data
where gender='female' and age<20;
/*male>20*/
select gender,count(age)
from data
where gender='male' and age>20;
/*age<20*/
select gender,count(age)
from data
where gender='male' and age<20;
/*above 50 female*/
select gender, count(age) 
from data
where gender='female' and age>50;
/*male above 50*/
select gender, count(age) 
from data
where gender='male' and age>50;
/* maximum detected_city,detected_state,detected_district*/
select max(detected_city) as maximum_coviddetected_city,max(detected_state) as maximum_detected_state, max(detected_district) as maximum_detected_district
from data;

/*count total cases by each governid */
select count(*) as total_cases,government_id
from data
group by government_id;
/*how many infected case is in mumbai and kerala*/
select detected_city, count(*) as total_cases
from data
where detected_city in ('mumbai' ,'jaipur','pune','delhi','Gurugram','Hyderabad')
group by detected_city;

/*total cases by  nationality or indian*/
select nationality, count(*) as total_cases
from data
group by nationality;

/*count the current status*/
select current_status, count(*) as no_of_patients
from data
group by current_status;
/* execute the notes and current _status*/
select notes, id, contacts, current_status
from data
group by contacts
order by 3 desc
limit 5;
/*how many people infected in Maharashtra*/
select detected_state, count(*) as total_infected_people
from data
where detected_state='Maharashtra';

/*infected city on Maharashtra*/
select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='Maharashtra'
group by detected_city
order by 3 desc
limit 5;

/*infected city on kerala*/
select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='kerala'
group by detected_city
order by 3 desc
limit 5;

/*infected city on rajasthan*/
select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='rajasthan'
group by detected_city
order by 3 desc
limit 5;
/*select cites in different states */
select  max(detected_city), detected_state
from data
group by detected_state;

/*infected city on westbengal*/
select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='West Bengal'
group by detected_city
order by 3 desc
limit 5;
/*Haryana*/
select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='Haryana'
group by detected_city
order by 3 desc
limit 5;

select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='Delhi'
group by detected_city
order by 3 desc
limit 5;

select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='Uttar Pradesh'
group by detected_city
order by 3 desc
limit 5;

select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='Punjab'
group by detected_city
order by 3 desc
limit 5;
select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='Gujarat'
group by detected_city
order by 3 desc
limit 5;
select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='Tamil Nadu'
group by detected_city
order by 3 desc
limit 5;

select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='Telangana'
group by detected_city
order by 3 desc
limit 5;

select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='Karnataka'
group by detected_city
order by 3 desc
limit 5;

select  distinct detected_city, detected_state, count(*) as total_case
from data
where detected_state='Maharashtra'
group by detected_city
order by 3 desc
limit 5;
/*id number infected in kolkata*/
select  id, detected_city, detected_state, nationality,notes
from data
where detected_city='kolkata' and detected_state='West Bengal';
/*id number infected in  'Maharashtra'*/
select detected_city, detected_state, id,nationality, notes
from data
where detected_city in ('mumbai','pune') and detected_state='Maharashtra'
limit 5;

create table lockdown
(
District char(100),
State char(100),
Zone char(100)
);
select * from lockdown;

drop table zone;

/*how many zones are there */
select zone
from lockdown
group by zone;

/*total zones*/
select zone, count(zone) as total_zone
from lockdown
group by zone;
/*total districts in each zone*/
select count(district),zone
from lockdown
group by zone;

create table covid_tweets
(
 c_date char(100),
narendramodi char(100),
narendramodi_hashtags char(100),
AmitShah  char(100),
AmitShah_hashtags char(100),
ArvindKejriwal char(100),
ArvindKejriwal_hashtags char(100),
RahulGandhi char(100),
RahulGandhi_hashtags char(100),
PiyushGoyal	char(100),
PiyushGoyal_hashtags	char(100),
drharshvardhan	char(100),
drharshvardhan_hashtags	char(100),
nsitharaman	char(100),
nsitharaman_hashtags	char(100),
aajtak	char(100),
aajtak_hashtags	char(100),
ABPNews	char(100),
ABPNews_hashtags	char(100),
DDNewslive	char(100),
DDNewslive_hashtags	char(100),
MoHFW_INDIA	char(100),
MoHFW_INDIA_hashtags	char(100),
PMOIndia	char(100),
PMOIndia_hashtags	char(100),
ndtv	char(100),
ndtv_hashtags	char(100),
timesofindia	char(100),
timesofindia_hashtags	char(100),
ftindianews	char(100),
ftindianews_hashtags	char(100),
BBCIndia char(100),	
BBCIndia_hashtags	 char(100),
htTweets	char(100),
htTweets_hashtags	 char(100),
WHO char(100),	
WHO_hashtags char(100),	
DDIndialive	 char(100),
DDIndialive_hashtags	char(100)
);
select * from covid_tweets;

/*shoe 5 narendromodi's tweet*/
select narendramodi, narendramodi_hashtags
from covid_tweets
limit 8;

/*AmitShah tweets*/
select AmitShah
from covid_tweets
limit 5;
/*amishah_hashtags*/
select AmitShah_hashtags
from covid_tweets
limit 5;
/*arvindkejriwal tweets*/
select arvindkejriwal
from covid_tweets
limit 8;
/*rahulgandhi tweets*/
select RahulGandhi
from covid_tweets
limit 8;



























