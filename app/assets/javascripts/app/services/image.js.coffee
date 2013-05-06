@stream.factory('Image', ($resource) ->
   return $resource('/api/v1/images/:id', {id: '@id'})
)