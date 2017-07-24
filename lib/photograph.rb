class Photograph

  attr_reader :name,
              :id,
              :artist_id,
              :museum_id,
              :year

  def initialize(hash)
    @name = hash[:name]
    @id = establish_id
    @artist_id = hash[:artist_id]
    @museum_id = hash[:museum_id]
    @year = hash[:year]
  end

  def establish_id
    id = 0
    id += 1
  end

end
