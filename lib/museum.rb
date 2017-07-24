class Museum
  attr_reader :id,
              :name

  def initialize(arguments)
    arguments[:id] = establish_id
    @id   = arguments[:id]
    @name = arguments[:name]
  end

  def establish_id
    id = 0
    id += 1
  end

end
