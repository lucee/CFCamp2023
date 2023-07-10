<cftimeout timespan="#createTimespan(0, 0, 0, 0,100)#" ontimeout="#function(timespan){
    dump(timespan);
    }#">
    <cfset sleep(1000)>
</cftimeout>


<cfscript>
    
    exit type="template";
    timeout timespan=createTimespan(0, 0, 0, 0,100) onerror=function(cfcatch){
        dump(arguments);
        throw cfcatch;
        } {
            throw "upsi dupsi";
        }
</cfscript>
