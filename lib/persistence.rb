require 'yaml'
require './lib/student'

class Persistence
  def load
    YAML.load_file('data/people.yaml', permitted_classes: [Student])
  end
end