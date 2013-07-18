# Load the rails application
require File.expand_path('../application', __FILE__)

YAML.load_file("#{::Rails.root}/config/environment_variables.yml").each do |key, value|
  ENV[key] = value
end

# Initialize the rails application
DominateGaming::Application.initialize!
