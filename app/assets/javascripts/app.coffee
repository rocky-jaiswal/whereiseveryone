'use strict'

angular.module("whereApp", ["whereApp.storageService", "whereApp.webService"]).config ($routeProvider) ->
  $routeProvider
  .when("/", {templateUrl: "assets/main.html", controller: "NavigationCtrl"})
  .otherwise({redirectTo: "/"})