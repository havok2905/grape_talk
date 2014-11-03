require 'json'

task 'default' do
  puts 'default'
end

namespace 'test' do
  task 'json' do
    json_response["failures"].each do | failure |
      error = error_message(failure["err"]["message"])
      curl_switch error if error
    end
  end
end

def json_response
  output = `abao raml/beer.raml http://localhost:9292/api/v1 --reporter json`
  JSON.parse output
end

def error_message (message)
  /Error: expected value to match json-schema/.match(message).to_s
end

def curl_switch (error)
  case error
  when 'Error: expected value to match json-schema'
    create_story
  else
    puts 'no error'
  end
end

def create_story
  response = `curl -X POST -H "X-TrackerToken: 'eb2a8bff130759081b877478e337104f" -H "Content-Type: application/json" -d '{"name":"Test Ticket"}' "https://www.pivotaltracker.com/services/v5/projects/1198880/stories"`
  puts response
end
