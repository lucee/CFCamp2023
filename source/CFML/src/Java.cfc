component {
	
	public int function echoInt(int i) type="java" {
		if(i==1)throw new java.io.IOException("it is not allowed to pass in the number 1!");
		 return i;
	}

	public void function testEchoInt(){
		dump(echoInt(10));
	}

} 