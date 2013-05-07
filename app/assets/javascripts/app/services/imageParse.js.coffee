@stream.service('Parser') -> 

   process: (url) ->
      if url.match(/imgur/)
         exp = url.match(/(gallery\/)(.*)/)
         image = exp[2]
         embed = "i.imgur.com/" + image + ".jpeg"
         return{embed: embed}
      return{url: url}
   
