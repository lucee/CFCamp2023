<cfscript>
s=structNew(onMissingKey:function(string missingKey,struct struct){
    //dump(arguments);
    if(missingKey=="B") return "B-value";
    throw "key [#missingKey#] gits nid!" // bernese german translation
});
s.a=1;
dump(s.b);
dump(s.c);

</cfscript>


