select * from sharkTank..data

--- total episodes 
select max(epno) from data
select count (distinct Epno) from data

--total number of unique brand get funding 
select count(distinct brand) from data where [Amount Invested lakhs]>0

-- making a column invested or not

select sum(a.investedOrNot)funding_recv,count(*) total_pitches from (
select [Amount Invested lakhs],case when [Amount Invested lakhs]>0 then 1 else 0 end as investedOrNot from data) a

-- success % from the pitches
select (cast(sum(a.investedOrNot) as float)/ cast(count(*) as float))*100 as successPercentage  from (
select [Amount Invested lakhs],case when [Amount Invested lakhs]>0 then 1 else 0 end as investedOrNot from data) a

-- total number of male
select sum(Male) as totalMale from data

-- total number of female
select sum(Female) as totalFemale from data

--total amount invested in a shark tank

select sum([Amount Invested lakhs]) from data

-- average equity taken
select avg([Equity Taken %]) from data where [Equity Taken %] >0

-- highest deal taken
select max([Amount Invested lakhs]) from data

--higest equility taken my shark
select max([Equity Taken %]) from data

-- atleast one is female
select count(Female) from sharkTank..Data where Female>0

select sum(a.female_count) as startup_having_at_least_women from(
select Female, case when female>0 then 1 else 0 end as female_count from sharkTank..Data) a

-- pitches converted having atleast one women

select count(Female) from sharkTank..Data where Deal!='No Deal' and Female>0

-- avg team member
 select avg([Team members]) from sharkTank..Data

 --avg amount invested per deal

 select avg([Amount Invested lakhs]) as amount_invested_per_deal from sharkTank..Data where Deal!='No Deal'
 
 -- avg age group of contestants

 select [Avg age],count([Avg age]) cnt from sharkTank..Data group by [Avg age] order by cnt

 -- most frequent place the pitches is came

 select Location, count(Location) freq_place from sharkTank..Data group by Location order by freq_place desc

  -- most frequent sector 

 select Sector, count(Sector) freq_sector from sharkTank..Data group by Sector order by freq_sector desc

 --partners
 select Partners, count (Partners) from sharkTank..Data  where 
 Partners !='-'  group by Partners order by count(Partners) desc

 -- making the matrix
 select m.keyy,m.total_deals_present,m.total_deal,n.avg_equity from 
 (select a.keyy,a.total_deals_present,b.total_deal from(
 select 'Ashneer' as keyy, count([Ashneer Amount Invested]) as total_deals_present from sharkTank..Data 
where  [Ashneer Amount Invested] is not null) a
inner join (
select 'Ashneer' as keyy, count([Ashneer Amount Invested]) as total_deal from sharkTank..Data 
where [Ashneer Amount Invested] !=0 and [Ashneer Amount Invested] is not null) b
on a.keyy=b.keyy) m
inner join
(select 'Ashneer' as keyy, avg([Ashneer Equity Taken %]) as avg_equity ,sum([Ashneer Equity Taken %]) as sumAshneerEquity from sharkTank..Data 
where [Ashneer Equity Taken %] !=0 and [Ashneer Equity Taken %] is not null)n

on m.keyy=n.keyy

union all
 select m.keyy,m.total_deals_present,m.total_deal,n.avg_equity from 
 (select a.keyy,a.total_deals_present,b.total_deal from(
 select 'Namita' as keyy, count([Namita Amount Invested]) as total_deals_present from sharkTank..Data 
where  [Namita Amount Invested] is not null) a
inner join (
select 'Namita' as keyy, count([Namita Amount Invested]) as total_deal from sharkTank..Data 
where [Namita Amount Invested] !=0 and [Namita Amount Invested] is not null) b
on a.keyy=b.keyy) m
inner join
(select 'Namita' as keyy, avg([Namita Equity Taken %]) as avg_equity ,sum([Namita Equity Taken %]) as sumAshneerEquity from sharkTank..Data 
where [Namita Equity Taken %] !=0 and [Namita Equity Taken %] is not null)n

on m.keyy=n.keyy


union all
 select m.keyy,m.total_deals_present,m.total_deal,n.avg_equity from 
 (select a.keyy,a.total_deals_present,b.total_deal from(
 select 'Vineeta' as keyy, count([Vineeta Amount Invested]) as total_deals_present from sharkTank..Data 
where  [Vineeta Amount Invested] is not null) a
inner join (
select 'Vineeta' as keyy, count([Vineeta Amount Invested]) as total_deal from sharkTank..Data 
where [Vineeta Amount Invested] !=0 and [Vineeta Amount Invested] is not null) b
on a.keyy=b.keyy) m
inner join
(select 'Vineeta' as keyy, avg([Vineeta Equity Taken %]) as avg_equity ,sum([Vineeta Equity Taken %]) as sumAshneerEquity from sharkTank..Data 
where [Vineeta Equity Taken %] !=0 and [Vineeta Equity Taken %] is not null)n

on m.keyy=n.keyy


union all
 select m.keyy,m.total_deals_present,m.total_deal,n.avg_equity from 
 (select a.keyy,a.total_deals_present,b.total_deal from(
 select 'Anupam' as keyy, count([Anupam Amount Invested]) as total_deals_present from sharkTank..Data 
where  [Anupam Amount Invested] is not null) a
inner join (
select 'Anupam' as keyy, count([Anupam Amount Invested]) as total_deal from sharkTank..Data 
where [Anupam Amount Invested] !=0 and [Anupam Amount Invested] is not null) b
on a.keyy=b.keyy) m
inner join
(select 'Anupam' as keyy, avg([Anupam Equity Taken %]) as avg_equity ,sum([Anupam Equity Taken %]) as sumAshneerEquity from sharkTank..Data 
where [Anupam Equity Taken %] !=0 and [Anupam Equity Taken %] is not null)n

on m.keyy=n.keyy


union all
 select m.keyy,m.total_deals_present,m.total_deal,n.avg_equity from 
 (select a.keyy,a.total_deals_present,b.total_deal from(
 select 'Aman' as keyy, count([Aman Amount Invested]) as total_deals_present from sharkTank..Data 
where  [Aman Amount Invested] is not null) a
inner join (
select 'Aman' as keyy, count([Aman Amount Invested]) as total_deal from sharkTank..Data 
where [Aman Amount Invested] !=0 and [Aman Amount Invested] is not null) b
on a.keyy=b.keyy) m
inner join
(select 'Aman' as keyy, avg([Aman Equity Taken %]) as avg_equity ,sum([Aman Equity Taken %]) as sumAshneerEquity from sharkTank..Data 
where [Aman Equity Taken %] !=0 and [Aman Equity Taken %] is not null)n

on m.keyy=n.keyy

-- which is the start up in which highest amount has been invested in each domain/sector

select c.* from (
select Brand,Sector, [Amount Invested lakhs], 
rank() over( partition by Sector order by [Amount Invested lakhs] desc) rnk
from sharkTank..Data where Brand is not null and Sector is not null) c
where c.rnk=1