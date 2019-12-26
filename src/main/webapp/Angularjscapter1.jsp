<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script>
	
	function MyDataService() {
		return {
			getWorlds: function getWorlds() {
			return ["this world", "another world"];
			}
		};
	}
	
	function DemoController(worldsService) {
		var vm = this;
		vm.messages = worldsService.getWorlds().map(function(w) {
		return "Hello, " + w + "!";
		});
	}
	
	function startup($rootScope, $window) {
		$window.alert("Hello, user! Loading worlds...");
		$rootScope.hasStarted = true;
	}
	
		angular.module("myDemoApp", [/* module dependencies go here */])
		.service("worldsService", [MyDataService])
		.controller("demoController", ["worldsService", DemoController])
		.config(function() {
		console.log('configuring application');
	})
	.run(["$rootScope", "$window", startup]);
		
</script>
<title>APRENDIENDO ANGULAR JS</title>

</head>
<body ng-app="myDemoApp">
<div ng-app>
	<div ng-init="message='hola desde angular js.'">
		<label>Agrega al comentario : </label><input type="text" ng-model="messageExtra">
		<br>
		 <h2> <label> Mensaje : {{message + messageExtra}} </label></h2>
		<h3 ng-bind="message + '  ' + messageExtra "></h3>
	</div>
</div>
	
	<div>
		<div ng-class="{ 'started': hasStarted }" ng-cloak>
			<div ng-controller="demoController as vm">
				<div ng-controller="demoController as vm">
					<ul>
						<li ng-repeat="msg in vm.messages">{{ msg }}</li>
					</ul>
				</div>
				
			</div>
		</div>
	</div>
	
</body>
</html>