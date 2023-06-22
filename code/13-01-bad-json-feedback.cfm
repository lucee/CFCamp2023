<cfscript>
    json = '{ id: [ 1, 2, 3, 4 ] };';
    try {
        dump(json);
        dump(deserializeJson(json));
    } catch(e) {
        echo(e);
    }
    
  </cfscript>