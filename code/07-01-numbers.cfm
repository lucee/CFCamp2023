<cfdump var = "#10000.11 + 10000.12#">

<cfoutput>
    
    <cfset dump(label:"percise math enabled?",var:getPageContext().getApplicationContext().getPreciseMath())>
    #(59+0.99)*100#<br />
    #(59+1.99)*100#<br />
    #(59+2.99)*100#<br />
    #(59+3.99)*100#<br />
    #(59+4.99)*100#<br />
    #(59+5.99)*100#<br />
    #(59+6.99)*100#<br />
    #(59+7.99)*100#<br />
    #(59+8.99)*100#<br />
    #(59+9.99)*100#<br />
    #precisionEvaluate("(59+10.99)*100")#<br />
    </cfoutput>