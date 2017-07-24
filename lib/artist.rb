class Artist
  attr_reader :id,
              :name,
              :born,
              :died,
              :country

  def initialize(arguments)
    arguments[:id] = establish_id
    @id      = arguments[:id]
    @name    = arguments[:name]
    @born    = arguments[:born]
    @died    = arguments[:died]
    @country = arguments[:country]
  end

  def establish_id
    id = 0
    id += 1
  end

end
