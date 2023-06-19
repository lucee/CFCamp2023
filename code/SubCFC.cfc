component {
	this.a="Main";
	function mainTest() {


		cloMain=function (){ return "closure-main<br>";}
		//dump(clo);
		echo("closure-main=>"&cloMain());


		return "main<br>";
	}
} 

component name="Sub" {   
	this.b="Sub";
	function subTest() {
		cloSub=function (){ return "closure-sub<br>";}
		//dump(clo);
		echo("closure-sub=>"&cloSub());
		
		return "sub"; 
	}
}