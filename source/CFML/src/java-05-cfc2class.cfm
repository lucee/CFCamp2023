<cfscript>
	// get a java class that needs a CharSequence as input parameter
	test=createObject(type:"java",class:"org.lucee.demo.Test",
		bundleName:request.bundle.name,bundleVersion:request.bundle.version).init();
	
	ms=new MyString("Susi Sorglos");
	// component need to be converted to a CharSequence, so it can be passed into the java function
	dump(test.handleCS(ms)&"");

	//abort; // step 2
	test.handle(new MyString2("Susi Sorglos"));


	// advanced instead of using a external class we do it with a Java function
	/*void function test(java.lang.CharSequence cs) type="java" {
		pc.write("class-name: "+cs.getClass().getName());
		pc.write("<br>");
		pc.write("CharSequence? "+(cs instanceof java.lang.CharSequence));
		pc.write("<br>");
		pc.write("toString: "+cs.toString());
		pc.write("<br>");
	}*/
	
</cfscript> 