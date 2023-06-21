<h1>Built in javascript date masks</h1>
<cfscript>
	echo("dateTimeFormat");
	dump( var=dateTimeFormat( "2022/01/02 11:22:33.444", "isoMs" ), label="isoMs" ); // 2022-01-02T11:22:33.444+01:00
	dump( var=dateTimeFormat( "2022/01/02 11:22:33.444", "isoMillis" ), label="isoMillis" ); // 2022-01-02T11:22:33.444+01:00
	dump( var=dateTimeFormat( "2022/01/02 11:22:33.444", "javascript" ), label="javascript" ); // 2022-01-02T11:22:33.444+01:00


	echo("parseDateTime");
	dump( var=toString( parseDateTime( "2022-01-02T11:22:33.444+01:00", "isoMs" ) ), label="isoMs"  ); // {ts '2022-01-02 11:22:33'}
	dump( var=toString( parseDateTime( "2022-01-02T11:22:33.444+01:00", "isoMillis" ) ), label="isoMillis" ); // {ts '2022-01-02 11:22:33'}
	dump( var=toString( parseDateTime( "2022-01-02T11:22:33.444+01:00", "javascript") ), label="javascript" ); // {ts '2022-01-02 11:22:33'}

</cfscript>