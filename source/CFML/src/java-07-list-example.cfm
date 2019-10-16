<cfscript>
	mal=new MyArrayList();
	dump(mal);


	void function test(java.util.List list) type="java" {
		pc.write("size:"+list.size());
		//list.toArray();
		//list.toWhatever();
	}
	test(mal);
</cfscript> 