"use strict"

class NavigationCtrl

  constructor: (@$scope, @$location, @$routeParams, @$http, @storageService, @webService) ->
    @$scope.prev = @prev
    @$scope.next = @next
    
    promise = @webService.getStatus()
    promise.success (data) =>
      @$scope.statuses  = data

  prev: =>
    console.log @$scope.datex

  next: =>
    console.log @$scope.datex

NavigationCtrl.$inject = ["$scope", "$location", "$routeParams", "$http", "storageService", "webService"]
angular.module("whereApp").controller "NavigationCtrl", NavigationCtrl