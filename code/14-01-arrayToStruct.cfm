<cfscript>
    arr = ['a','b','c' ];
    dump(arrayToStruct(arr ));
    dump(arrayToStruct(array=arr, valueAsKey=true));
  </cfscript>