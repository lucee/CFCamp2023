<cfscript>
	// this class has a method that takes as an argument a CharSequence, 
	// that way we can force Lucee to convert/wrap our component to that interface.
	HashUtil =  createObject("java","lucee.commons.digest.HashUtil");

	// this component implements all necessary functions for the CharSequence
	cfc=new MyString("Susi Sorglos");

	// calling the method HashUtil.create64BitHashAsString(CharSequence cs) with our component as argument
	hash=HashUtil.create64BitHashAsString(cfc);
	dump(hash);
</cfscript> 