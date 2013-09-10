
var app = angular.module('app', [
	'app.home',
	'app.letters'
]);

app.config( ['$routeProvider', function ($routeProvider) {
	$routeProvider

		// routes
		.when('/a',	{templateUrl: 'static/partials/a.html',			controller: "AController"})
		.when('/b',	{templateUrl: 'static/partials/b.html',			controller: "BController"})
		.when('/',	{templateUrl: 'static/partials/home.html',			controller: "HomeController"})
		// default
		.otherwise({redirectTo: '/'});
}]);
