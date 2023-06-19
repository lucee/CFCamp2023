<cfscript>
    timer label="Nap time" type="outline" {
        sleep(30);
    }

    timer label="Nap time" type="debug" variable="t" {
        sleep(30);
    }
    dump(t);

</cfscript>