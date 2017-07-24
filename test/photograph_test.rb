require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/photograph'

class PhotographTest < Minitest::Test

  def test_it_exists
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_instance_of Photograph, photograph
  end

  def test_it_has_id
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal 1, photograph.id
  end

  def test_it_has_artist_id
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal 4, photograph.artist_id
  end

  def test_it_has_museum_id
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal 2, photograph.museum_id
  end

  def test_it_has_name
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", photograph.name
  end

  def test_it_has_a_year
    photograph = Photograph.new({name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
    assert_equal 1954, photograph.year
  end

end
