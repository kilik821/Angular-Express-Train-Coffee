mongoose = require("mongoose")
module.exports = (config) ->
  
  #set up mongoose database connection
  return mongoose.connect config.mongodb.uri unless mongoose.connection.readyState
