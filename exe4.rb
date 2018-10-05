class People
  attr_accessor :name

  def name
    @name = name
  end

  def name
    @name
  end
end

animal = People.new
animal.name = "さる"
p animal.name
