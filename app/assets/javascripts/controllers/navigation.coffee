"use strict"

class NavigationCtrl

  constructor: (@$scope, @$location, @$routeParams, @$http, @storageService, @webService) ->
    @$scope.isLoading = false
    @$scope.prev = @prev
    @$scope.next = @next

    @$scope.datex = moment()
    @getData()

  prev: =>
    @$scope.datex.subtract('days', 1)
    @getData()

  next: =>
    @$scope.datex.add("days", 1)
    @getData()

  getData: () =>
    @$scope.isLoading = true
    promise = @webService.getStatus(@$scope.datex.format("YYYY-MM-DD"))
    promise.success (data) =>
      @$scope.statuses  = data
      @$scope.isLoading = false

NavigationCtrl.$inject = ["$scope", "$location", "$routeParams", "$http", "storageService", "webService"]
angular.module("whereApp").controller "NavigationCtrl", NavigationCtrl