<cfquery name="qry" datasource="mysql" indexName="id">
	select 11 as id, 'Susi' as name
	union all
	select 12 as id, 'Peter' as name
	union all
	select 13 as id, 'Urs' as name
</cfquery>

<cfdump var="#qry#">
<cfdump var="#QueryRowByIndex(qry,12)#">
<cfdump var="#QueryRowDataByIndex(qry,12)#">
<cfdump var="#QueryGetCellByIndex(qry,"name",12)#">



