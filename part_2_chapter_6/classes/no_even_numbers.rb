class NoEvenNumbers < StandardError

  attr_accessor :array

  def initialize(array)
    super("No even Numbers !!!")
    @array = array
  end
end
