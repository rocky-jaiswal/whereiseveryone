"use strict"

class MyDate

  @options : () ->
    link : (scope, element, attrs) ->
      now = new Date()
      scope.datex = now
      element.html now.toDateString()

angular.module("whereApp").directive "myDate", MyDate.options