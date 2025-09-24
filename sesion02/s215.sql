use northwind;

-- select * from <tabla1> T1
--      join <tabla2> T2 on T1.campo1 = T2.campo2
--      join <tabla3> T3 on T2.campo3 = T3.campo4

select 
	E.EmployeeID,
	E.LastName,
	E.FirstName,
	T.TerritoryID,
	T.TerritoryDescription,
	R.RegionID,
	R.RegionDescription
from Employees E -- EID(1), ...
join EmployeeTerritories ET  -- EID(*), TID(*)
	on E.EmployeeID = ET.EmployeeID
join Territories T -- TID(1), ..., RID(1)
	on ET.TerritoryID = T.TerritoryID
join Region R -- RID(1), ...
	on T.RegionID = R.RegionID;

-- E(*), ET(*), T(1), R(1)