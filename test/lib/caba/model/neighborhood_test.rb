require 'test_helper'

describe Caba::Model::Neighborhood do
  describe "#initialize" do
    before do
      @neighborhood = Caba::Model::Neighborhood.new({
        name: 'Palermo',
        perimeter: 123,
        commune: 1,
        latitude: 27.2,
        longitude: 20.4
      })
    end

    it "should set name" do
      @neighborhood.instance_variable_get("@name").must_equal 'Palermo' 
    end


    it "should set perimeter" do
      @neighborhood.instance_variable_get("@perimeter").must_equal 123 
    end


    it "should set commune" do
      @neighborhood.instance_variable_get("@commune").must_equal 1 
    end


    it "should set latitude" do
      @neighborhood.instance_variable_get("@latitude").must_equal 27.2 
    end


    it "should set longitude" do
      @neighborhood.instance_variable_get("@longitude").must_equal 20.4 
    end
  end

  describe "#all" do
    before do
      @result = Caba::Model::Neighborhood.all
    end 
    it "should return an array" do
      @result.must_be_kind_of Array
    end

    it "should return Neighborhood instances" do
      @result[0].must_be_instance_of Caba::Model::Neighborhood
    end 
  end
end

