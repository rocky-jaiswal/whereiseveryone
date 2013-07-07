'use strict'

angular.module("whereApp", ["whereApp.storageService", "whereApp.webService"]).config ($routeProvider) ->
  $routeProvider
  .when("/", {templateUrl: "assets/main.html", controller: "NavigationCtrl"})
  .when("/login", {templateUrl: "assets/login.html", controller: "LoginCtrl"})
  .otherwise({redirectTo: "/"})