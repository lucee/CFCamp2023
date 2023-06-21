<cfscript>
listener=new component {  
	function (caller,args,result,meta) {
        dump(label:"after",var:arguments);
	}
}; 

</cfscript>

<!--- custom listener --->
<cfquery name="qry" datasource="mysql" listener="#listener#">
	show tables
</cfquery>
<cfdump var="#qry#">