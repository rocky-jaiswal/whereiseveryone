"use strict"

class LoginCtrl

  constructor: (@$scope, @$location, @$routeParams, @$http, @storageService, @webService) ->
    @$scope.login = @login

  login: (user) =>
    console.log user


LoginCtrl.$inject = ["$scope", "$location", "$routeParams", "$http", "storageService", "webService"]
angular.module("whereApp").controller "LoginCtrl", LoginCtrl