@stream = angular.module('stream', [])

@stream.config(($routeProvider, $locationProvider) ->
   $locationProvider.html5Mode(true)

   $routeProvider
      .when("/", {templateUrl: "images/index", controller: "ImagesController"})
      .when("/images", {templateUrl: "images/index", controller: "ImagesController"})
      .when("/images/new", {templateUrl: "images/index", controller: "ImagesController"})
      .when("/images/:id", {templateUrl: "images/show", controller: "ImageController"})
      .when("/images/:id/edit", {templateUrl: "images/edit", controller: "ImageController"})
      .otherwise({templateUrl: "Page not found by angular. This is a sad day."})
)

@stream.run(['$window', '$templateCache', ($window, $templateCache) ->
   $templateCache.put(name, templateFunction) for name, templateFunction of $window.JST
])