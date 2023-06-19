<cfscript>
	mal=new MyArrayList();
	dump(mal);


	void function test(java.util.List list) type="java" {
		String app="<br>\n";
		pc.write("size:"+list.size()+app);
		pc.write("class:"+list.getClass().getName()+app);
	}
	test(mal);

</cfscript> 