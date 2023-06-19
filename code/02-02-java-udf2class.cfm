<cfscript>
	test=createObject(type:"java",class:"org.lucee.demo.Test",
		bundleName:request.bundle.name,bundleVersion:request.bundle.version).init();
	
	
	int function leftShift(int nbr, int shift) type="java" {
		return nbr<<shift;
	}
	dump(leftShift); // as you can see in the dump it gives a java.util.function.IntBinaryOperator Java Function
	dump(leftShift(200,1));

	abort; // step 2
	

	dump(test.handleJF(leftShift));
	
	abort; // step 3
	
	
	// but lucee can convert a regular UDF to a java function as well, so you can do a simple UDF and pass it as well
	numeric function leftShift2(numeric nbr, numeric shift) {
		return BitSHLN(nbr,shift);
	}
	dump(test.handleJF(leftShift2));

	// advanced: we write a Java function that takes java.util.function.IntBinaryOperator as input parameter
	/*int function lshift(java.util.function.IntBinaryOperator ibo) type="java" {
		return ibo.applyAsInt(200, 2);
	}*/
</cfscript> 