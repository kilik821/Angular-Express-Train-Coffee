mongoose = require "mongoose"
acl = require "acl"
module.exports = (dal) ->

  return new acl new acl.mongodbBackend dal