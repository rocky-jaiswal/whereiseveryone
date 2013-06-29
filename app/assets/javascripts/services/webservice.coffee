"use strict"

class WebService

  constructor: (@$http, @storageService) ->
    @server = "http://localhost:3000/"

  getStatus: () ->
    @$http.get(@server + 'status')
  

angular.module "whereApp.webService", [], ($provide) ->
  $provide.factory "webService", ["$http", "storageService", ($http, storageService) -> new WebService($http, storageService)]
