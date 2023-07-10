<cfscript>
	queryLazy(
		sql:"show tables",
		listener: function( row ) {
			dump(row);
		},
		// params: [],
		options:{
			datasource:  "mysql"
		}
	);
	exit type="template";
	
	queryLazy(
		sql:"show tables",
		listener: function( rows ) {
			dump(rows);
		},
		options:{
			blockfactor: 10
			,datasource:  "mysql"
			,returntype:"query"
			//,columnKey:"Tables_in_test" // used for return type struct
		}
	);


</cfscript> 