// component that implements all methods from interface CharSequence
component implementsJava="java.util.List" {
	function onMissingMethod(name,args) {
		if(name=="size") return 10;
		throw "method #name# is not supported!";
	}
} 