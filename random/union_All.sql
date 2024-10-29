-- Ahmed Omar Roberts

USE [college_db];

select 1 as 'NUMNUM', 'ahmed' as [f_name]
Union
Select 2, 'alexander' as [f_name]
Union
Select 2, 'destine'
Union
select 1 as 'NUMNUM', 'ahmed' as [f_name]

-- Union ALL vs Union Groups

select 1 as 'Bang', 'ahmed' as [f_name]
Union
Select 2, 'alexander' as [f_name]
Union 
Select 2, 'destine'
Union ALL
select 1 as 'Bang', 'ahmed' as [f_name]
