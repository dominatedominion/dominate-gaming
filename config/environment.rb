# Load the rails application
require File.expand_path('../application', __FILE__)

YAML.load_file("#{::Rails.root}/config/environment_variables.yml").each do |key, value|
  puts "Loading Variable [#{key}] = #{value}"
  ENV[key] = value
  puts "Rails environment_variables: #{Env[key]}"
end

# Initialize the rails application
DominateGaming::Application.initialize!
