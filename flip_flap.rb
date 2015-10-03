require_relative 'tsv_buddy'
require 'yaml'

class FlipFlap
  
  # Mixin from module tsv_buddy
  include TsvBuddy
  
  # Process yml string.
  # Return: a array of hash.
  def take_yaml(yml)
    @data = YAML.load(yml)
  end
  
  # converts @data into yml string
  # Return: yml format string
  def to_yaml
    @data.to_yaml
  end
  
end
