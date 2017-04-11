class Players
  attr_reader :name
  attr_accessor :life
  attr_accessor :turn

  def initialize(name = 'Player')
    @name = name
    @life = 0
    @turn = false
  end

end