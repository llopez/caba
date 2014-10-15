require "caba/version"
require "caba/model/neighborhood"

module Caba
  def self.neighborhoods
    Model::Neighborhood.all 
  end
end

