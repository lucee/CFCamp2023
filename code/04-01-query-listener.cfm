<cfscript>
listener={
	before= function (caller,args) {
        dump(label:"before",var:arguments);
    	args.sql&=" where Tables_in_test<>'test'"
        return arguments;
	},
	after= function (caller,args,result,meta) {
        dump(label:"after",var:arguments);
		var colName="table_name_lower_case";
		queryAddColumn(arguments.result,colName);
		loop query=result {
			result["table_name_lower_case"]=lCase(result["Tables_in_test"]);
		}
		return arguments;
	}
}
</cfscript>

<!--- custom listener --->
<cfquery name="qry" datasource="mysql" listener="#listener#">
	show tables
</cfquery>
<cfdump var="#qry#">