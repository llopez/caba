module Caba
  module Model
    class Neighborhood
      attr_accessor :name, :perimeter, :area,
                    :commune, :longitude, :latitude

      def initialize(attrs={})
        attrs.each do |k, v|
          instance_variable_set("@#{k}", v)
        end
      end

      def self.all
        string_io = File.read("info.csv")
        rows = string_io.split("\n") 
        keys = rows[0].split(",")
        data = rows[1..-1].map{ |x|
          cols = x.split(',') 
          new({
            name: cols[0],
            perimeter: Float(cols[1]),
            area: Float(cols[2]),
            commune: Integer(cols[3]),
            longitude: Float(cols[4]),
            latitude: Float(cols[5]) 
          })
        }
      end
    end
  end
end

