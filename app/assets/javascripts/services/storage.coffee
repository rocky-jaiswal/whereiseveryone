"use strict"

class StorageService

  store: (key, value) ->
    localStorage.setItem(key, value)

  get: (key) ->
    localStorage.getItem key

  clear: ->
    localStorage.clear()


angular.module "whereApp.service", [], ($provide) ->
  $provide.factory "storageService", -> new StorageService()
