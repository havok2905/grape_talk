require 'json'

task 'default' do
  puts 'default'
end

namespace 'test' do
  task 'json' do
    output = `abao raml/beer.raml http://localhost:9292/api/v1 --reporter json`
    json_output = JSON.parse output
    json_output["failures"].each do | failure |
      message = /Error: expected value to match json-schema/.match(failure["err"]["message"])
      puts "curl to pivotal api" if message.to_s == "Error: expected value to match json-schema"
    end
  end
end
