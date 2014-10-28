{before, after} = require 'hooks'

before 'GET /beer/styles -> 200', (test, done) ->
  console.log test
  done()

after 'GET /beer/styles -> 200', (test, done) ->
  console.log test.response.body
  done()
