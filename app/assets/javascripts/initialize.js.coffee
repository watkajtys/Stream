@stream = angular.module('stream', [])

@stream.config(($routeProvider, $locationProvider) ->
   $locationProvider.html5Mode(true)

   $routeProvider
      .when("/", {template: "images/index", controller: "ImagesController"})
      .when("/images", {template: "images/index", controller: "ImagesController"})
      .when("/images/:id", {template: "images/show", controller: "ImageController"})
      .when("/images/:id/edit", {template: "images/edit", controller: "ImageController"})
      .when("/images/new", {template: "images/index", controller: "ImagesController"})
      .otherwise({template: "Page not found by angular. This is a sad day."})
   )