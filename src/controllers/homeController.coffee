module.exports = (app) ->
  index: [(req, res, next) ->
    
    #we just want to return an html file.  Angular will take care of the templating.
    res.render "index"
  ]
