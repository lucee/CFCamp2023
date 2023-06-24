![Lucee](https://bitbucket.org/repo/rX87Rq/images/3392835614-logo-1-color-black-small.png)
 
CFCamp 2023
===========

This repository contains the code that is used for the Presention "Lucee 6" at CFCamp 2023.  
Under /code you can find the code example step by step. 


## Running the examples
You can run the examples in (Docker compose)[https://docs.docker.com/compose/]. We have provied a docker-compose.yml file that will start a Lucee 6 server and mysql for you. 

You can start the server with the following command: 

```
docker-compose up
```

And you can then access the server on http://localhost:8888

## Developing the examples
The examples are run in Application.cfc and use the inc/layout.cfm to render the page. 
The examples can display a reference to another file by adding them in the `inc/refs.cfs` script file in the format:
```
    {
        "/03-01-subcfc.cfm": [ 
            "/SubCFC.cfc" 
        ]
    }
```
Where the key of the root structure is the current template path and the value is an array of the paths to the files that are referenced in the example.