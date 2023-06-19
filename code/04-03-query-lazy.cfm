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
//abort;
	queryLazy(
		sql:"show tables",
		listener: function( arrRows ) {
			dump(arrRows);
		},
		options:{
			datasource:  "mysql",
			returntype:"query",
			blockfactor: 10
		}
	);


</cfscript> 