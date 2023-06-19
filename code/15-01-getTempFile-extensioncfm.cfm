<cfscript>
    dump(GetTempFile(getTempDirectory(), "demo"));
    dump(GetTempFile(getTempDirectory(), "demo", "pdf"));
</cfscript>