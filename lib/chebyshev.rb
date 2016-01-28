require "chebyshev/version"
require 'yaml'
require 'erubis'

class Chebyshev
  def self.expand(origin_file_path, yaml_file_path, result_file_path=nil)
    erb = Erubis::Eruby.new(File.read origin_file_path)
    erb.result(YAML.load(File.read yaml_file_path)).tap do |expand_file|
      if result_file_path
        File.write(result_file_path, expand_file)
      end
    end
  end
end
