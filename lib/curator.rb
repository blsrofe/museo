require './lib/museum'
require './lib/artist'

class Curator

  attr_reader :artists,
              :museums,
              :photographs

  def initialize
    @artists = []
    @museums = []
    @photographs = []
  end

  def add_museum(name_hash)
    museums << Museum.new(name_hash)
  end

  def add_artist(info)
    artists << Artist.new(info)
  end

end
