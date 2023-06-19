<cfscript>
    curr=getDirectoryFromPath(cgi.script_name);
    path=curr&"internalrequest/inc.cfm";
    dump(path);
    /**
     * make an internal request that is very similar as a cfhttp call, with the benefit to be faster and get more data.
     * @template
     */
    result=internalRequest(
        template:path
        , method:"post"
        , forms: {formkey:"Form Value"}  // or query string (thus allowing passing multiple values for the same key)
        , urls: {urlkey:"URL Value"}  // or query string
        , cookies: {cookiekey:"Cookie Value"}
        , headers: {headerkey:"Header Value","content-type":"text/plain"}
        , body: "Body send"
        , charset: "UTF-8"
        , addToken: true
        , throwOnError: true
    );
    echo(result.filecontent?:"");
    echo("<hr>");
    dump(result);
    
    
</cfscript>