<cfmail subject="CFCamp 2019 Test" from="michael@lucee.org" to="susi@sorglos.de" async="true"
		listener ="#new component {
			function before(caller,nextExecution,created,detail,closed,advanced,tries,id,type,remainingtries) {
				systemOutput(arguments.keyList(),1,1);
				detail.from&=".de";
				return arguments.detail;
			}
			function after(caller,created,detail,closed,lastExecution,advanced,tries,id,type,passed,remainingtries) {
				systemOutput(arguments.keyList(),1,1);
			}
		
		)#">
	This is a test
</cfmail>