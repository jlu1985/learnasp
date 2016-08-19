Response.write('included js.js files');
var incObj = {
	sayHello: function(){
		
		return "Hello from incObj";
	},
	
	sayBye: function (){
		Response.write('bye');
	}
}