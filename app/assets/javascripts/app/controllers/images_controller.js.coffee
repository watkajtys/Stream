@stream.controller("ImagesController", ($scope, Image) ->
   console.log 'controller is live'

   $scope.images = Image
)