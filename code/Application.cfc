component {
	request.bundle={name:"cfcamp2019",version:"1.0.0.0-SNAPSHOT"};
	request.bundle={name:"cfcamp2019",version:"1.0.0.0-SNAPSHOT"};


	//this.preciseMath=true;

	this.datasources["mysql"] = {
		class: "com.mysql.cj.jdbc.Driver", 
		bundleName: "com.mysql.cj", 
		bundleVersion: "8.0.33",
		connectionString: "jdbc:mysql://mysql:3306/test?characterEncoding=UTF-8&serverTimezone=Etc/UTC&maxReconnects=3",
		username: "root",
		password: "encrypted:9f7643f2237018b47ea9212d3dcad87bd124692121bbdabfc5c14b2859b5ca5c",
		
		// optional settings
		connectionLimit:-1, // default:-1
		liveTimeout:15, // default: -1; unit: minutes
		alwaysSetTimeout:true, // default: false
		validate:false, // default: false
	};

	this.datasources["h2"] = {
		class: "org.h2.Driver", 
		bundleName: "org.h2", 
		bundleVersion: "1.3.172",
		connectionString: "jdbc:h2:/var/www/h2/h2;MODE=MySQL",
		username: "admin",
		password: "encrypted:bd931c8178cf3f25ce1a66fda85d0f45a7756db3530bf8b40b009fd537c1856e",
		// optional settings
		connectionLimit:-1, // default:-1
		liveTimeout:15, // default: -1; unit: minutes
		validate:false, // default: false
	};
// QUERY
	// can also be a component
	/*this.query.listener={
		before=function (caller,args) {
	        dump(label:"before",var:arguments);
		},
		after=function (caller,args,rresult,meta) {
	        dump(label:"after",var:arguments);
		}
	}*/

// MAIL
	// can also be a component
	/*this.mail.listener={
		before=function (caller,nextExecution,created,detail,closed,advanced,tries,id,type,remainingtries) {
			systemOutput(arguments.keyList(),1,1);
			detail.from&=".de";
			return arguments.detail;
		},
		after=function (caller,created,detail,closed,lastExecution,advanced,tries,id,type,passed,remainingtries) {
			systemOutput(arguments.keyList(),1,1);
		}
	}*/

	this.mail.listener={
		before=function (caller,nextExecution,created,detail,closed,advanced,tries,id,type,remainingtries) {
			systemOutput(arguments.keyList(),1,1);
			detail.from&=".de";
			return arguments.detail;
		},
		after=function (caller,created,detail,closed,lastExecution,advanced,tries,id,type,passed,remainingtries) {
			systemOutput(arguments.keyList(),1,1);
		}
	}

	function onRequest(template){

		param name="url.layout" default="default";
		include "/inc/refs.cfs";

		var references = refSource[template] ?: [];

		if(url.layout == "default"){
		// dump(template);
		var source = fileRead(template);
			source = htmleditformat(source);
		var sourceFile = template;
		var nav = getNavigation();

		savecontent variable="body" {
			try {
				include template=template;

			}
			catch(any e){
				dump(e);
			}
		}
		
		
			include template="/inc/layout.cfm";
		}
		else {
			include template="#template#";
		}
	}

	function onRequestEnd (template){
		// var content = fileRead(template);
		// echo("<hr><h3>#template#</h3><pre>#htmleditformat(content)#</pre>");
		// if (listLast(template,"/\") != "index.cfm")
		// 	echo("<a href='./'>back</a>");
	}

	function getNavigation(){
		var nav = [];
			directory sort="name" action="list" directory=getDirectoryFromPath(getCurrentTemplatePath()) filter="*-*.cfm" name="dir";
			loop query=dir {
				nav.append(dir.name);
			}
		return nav;
	}
} 