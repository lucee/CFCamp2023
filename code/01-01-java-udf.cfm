<cfscript>
	int function echoInt(int i) type="java" {
		if(i==1)throw new Exception("Upsi dupsi!!!");
		return i*2;
	}
	 
	i=echoInt(12);
	dump(i);
	
	
	
	















	
	
	
	abort;
	// Simply add the attribute [type=”java”] and you can write your Java code directly in your CFML template
	java.lang.StringBuilder function createStringBuilder(String str) type="java" {
		 java.lang.StringBuilder sb=new java.lang.StringBuilder();
		 if(str!=null)sb.append(str);
		 return sb;
	}
	
	sb=createStringBuilder("Susi");
	dump(sb);
	
	// use the StringBuilder
	sb.append(' ');
	sb&="Sorglos";
	dump(sb);




</cfscript>
 