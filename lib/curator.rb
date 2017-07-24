require './lib/museum'

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

end
