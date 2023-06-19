<cfscript>
listener={
	before= function (caller,args) {
        dump(label:"before",var:arguments);
        //args.sql="select title from tasks"
        //return arguments;
	},
	after= function (caller,args,result,meta) {
        dump(label:"after",var:arguments);
        queryAddColumn(arguments.result,"whatever",[1,2,3]);
		return arguments;
	}
}
</cfscript>

<!--- custom listener --->
<cfquery name="qry" datasource="mysql" listener="#listener#">
	show tables
</cfquery>
<cfdump var="#qry#">