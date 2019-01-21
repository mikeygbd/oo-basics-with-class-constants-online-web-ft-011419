require "pry"
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand, :unique_brands

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
    if BRANDS.length > 3
      BRANDS.pop
    end
  end


  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end
