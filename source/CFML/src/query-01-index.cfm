<cfset createTableIfNecessary()>

<cfquery name="qry" datasource="h2" indexName="task_id">
	select * from tasks
</cfquery>

<cfdump var="#qry#">
<cfabort>

<cfdump var="#QueryRowByIndex(qry,2)#">
<cfdump var="#QueryRowDataByIndex(qry,2)#">
<cfdump var="#QueryGetCellByIndex(qry,"title",2)#">



























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