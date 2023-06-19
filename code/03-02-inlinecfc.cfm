<cfscript>
    inline=new component {   
        function subTest() {
            return "inline<br>"; 
        }  
    };   
    dump("inline->"&inline.subTest());
    dump(inline);

</cfscript>