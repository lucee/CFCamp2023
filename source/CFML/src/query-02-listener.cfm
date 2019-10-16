<cfset createTableIfNecessary()>

<cfscript>
listener={
	before=function (caller,args) {
        dump(label:"before",var:arguments);
        //args.sql="select title from tasks"
        //return arguments;
	},
	after=function (caller,args,rresult,meta) {
        dump(label:"after",var:arguments);
        //queryAddColumn(arguments.result,"whatever",[1,2,3]);
        //return arguments;
	}
}
</cfscript>

<!--- custom listener --->
<cfquery name="qry" datasource="h2" listener="#listener#">
	select * from tasks
</cfquery>
<cfdump var="#qry#">

<cfabort><!--- step 2 --->

<!--- async --->
<cfquery datasource="h2" listener="#listener#" async=true>
	select * from tasks
</cfquery>

<cfabort><!--- step 3 --->

<!--- Listener in Application.cfc --->
<cfquery name="qry" datasource="h2">
	select * from tasks
</cfquery>
<cfdump var="#qry#">






















<cfscript>

	function createTableIfNecessary() {
			query datasource="h2" {
				echo("
					CREATE TABLE IF NOT EXISTS tasks (
					    task_id INT AUTO_INCREMENT PRIMARY KEY,
					    title VARCHAR(255) NOT NULL,
					    description TEXT,
					    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
					) 
				");
			}

			query name="tasks" datasource="h2" {
				echo("select * from tasks 
				");
			}
			if(tasks.recordcount<3)query datasource="h2" {
				echo("
					insert into tasks (title,description)
					values('Publish Lucee 6','As soon as possible!!!')
					,('Publish Lucee 7','As soon as possible!!!')
					,('Publish Lucee 8','As soon as possible!!!')
				");
			}
		
	}
</cfscript> 