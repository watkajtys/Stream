@stream.controller("ImageController", ($scope, $routeParams, Image) ->
   console.log($routeParams.id)

   $scope.image = Image.get($routeParams, $.noop, (data) -> 
      $scope.errorMessage = "could not retrieve post"
   )
)