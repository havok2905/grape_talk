{before, after} = require 'hooks'

before 'GET /beer/styles -> 200', (test, done) ->
  done()

after 'GET /beer/styles -> 200', (test, done) ->
  done()
