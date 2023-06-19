<cfquery name="qry" datasource="mysql" indexName="id">
	select 1 as id, 'Susi' as name
	union all
	select 2 as id, 'Peter' as name
</cfquery>

<cfdump var="#qry#">
<cfdump var="#QueryRowByIndex(qry,2)#">
<cfdump var="#QueryRowDataByIndex(qry,2)#">
<cfdump var="#QueryGetCellByIndex(qry,"name",2)#">



