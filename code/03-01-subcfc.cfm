<cfscript>
try {
    cfc=new SubCFC();
    echo("main->"&cfc.mainTest());
    echo("<br>");

    cfc=new SubCFC$Sub();
    echo("sub->"&cfc.subTest());
    echo("<br>");
}
catch(e) {
    dump(e);    
    echo(e);
}



</cfscript>


