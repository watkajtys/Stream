@stream.controller("ImagesController", ($scope, $location, Parser, Image) ->
   console.log 'controller is live'

   $scope.images = Image.query()

   $scope.saveImage = ->
      Image.save($scope.newImage,
         (data) ->
            console.log('success')
            $location.path('/images')
         ,(response) ->
            $scope.errors = response.data.errors
         )
)