// component that implements all methods from interface CharSequence
component {

	function init(String str) {
		variables.str=reverse(arguments.str);
	}
	
    function length() {
    	SystemOutput("MyString.length:"&str.length(),1,1);
    	return str.length();
    }

    function  charAt( index) {
    	SystemOutput("MyString.charAt("&index&"):"&str.charAt( index),1,1);
    	return str.charAt( index);
    }

    function subSequence(start, end) {
    	SystemOutput("MyString.subSequence("&start&", "&end&"):"&str.subSequence(start, end),1,1);
    	return str.subSequence(start, end);
    }

    function toString() {
    	SystemOutput("MyString.toString():"&str.toString(),1,1);
    	return str.toString();
    } 
} 