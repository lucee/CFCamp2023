<cfscript>
	// also supported for closures
	someMath= function (int x) returntype="int"  type="java" {
		int y=++x*2;

		return ++y;
	}
	dump(someMath(10));

	
</cfscript>
 