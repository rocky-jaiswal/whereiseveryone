'use strict'

angular.module("whereApp", ["whereApp.service"]).config ($routeProvider) ->
  $routeProvider
  .when("/", {templateUrl: "/views/main.html", controller: "NavigationCtrl"})
  .otherwise({redirectTo: "/"})