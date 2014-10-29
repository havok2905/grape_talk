require 'json'

task 'default' do
  puts 'default'
end

namespace 'test' do
  task 'json' do
    json_response["failures"].each do | failure |
      error = error_message(failure["err"]["message"])
      curl_handler error if error
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

def curl_handler (error)
  case error
  when "Error: expected value to match json-schema"
    puts "curl to pivotal api"
  else
    puts "no error"
  end
end
