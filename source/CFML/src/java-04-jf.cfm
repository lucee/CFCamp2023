<cfscript>
	someMath= function (int x) returntype="int"  type="java" {
		int y=++x*2;

		return ++y;
	}
	dump(someMath);

	
</cfscript>
 