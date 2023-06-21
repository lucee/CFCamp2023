<cfscript>
	listener={
		error:function (args,caller,meta,exception){
			systemOutput(arguments.keyArray(),true,true);
			systemOutput(exception,true,true);
		}
	}

	query name="qry" datasource="mysql" async=true listener=listener {
		```
		update notExistingTable set notExistingColumn=1
		```
	}
</cfscript>



	