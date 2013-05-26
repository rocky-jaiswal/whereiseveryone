"use strict"

class NavigationCtrl

  constructor: (@$scope, @$location, @$routeParams, @$http, @storageService) ->
    @$scope.prev = @prev
    @$scope.next = @next
    @$http.get('/status').success (data) =>
      @$scope.statuses  = data

  prev: =>
    console.log @$scope.datex

  next: =>
    console.log @$scope.datex

NavigationCtrl.$inject = ["$scope", "$location", "$routeParams", "$http", "storageService"]
angular.module("whereApp").controller "NavigationCtrl", NavigationCtrl