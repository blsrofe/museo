require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/curator'


class CuratorTest < Minitest::Test

  def test_it_exists
    curator = Curator.new
    assert_instance_of Curator, curator
  end

  def test_it_has_no_artists_when_created
    curator = Curator.new
    assert_equal [], curator.artists
  end

  def test_it_has_no_museums_when_created
    curator = Curator.new
    assert_equal [], curator.museums
  end

  def test_it_has_no_photographs_when_created
    curator = Curator.new
    assert_equal [], curator.photographs
  end

  def test_it_can_add_museums
    skip
    curator = Curator.new

    curator.add_museum({name: "MoMA"})

    assert_equal [Museum.new({name: "MoMA"})], curator.museums
  end

  def test_it_knows_how_many_museums_it_has
    curator = Curator.new

    curator.add_museum({name: "MoMA"})

    assert_equal 1, curator.museums.count
  end

  def test_it_knows_the_id_of_its_museums
    curator = Curator.new

    curator.add_museum({name: "MoMA"})

    assert_equal 1, curator.museums.first.id
  end

  def test_it_can_add_artists
    skip
    curator = Curator.new

    artist = Artist.new({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})

    assert_equal [artist], curator.artists
  end

  def test_it_knows_how_many_artists_it_has
    curator = Curator.new

    curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})

    assert_equal 1, curator.artists.count
  end

  def test_it_knows_the_id_of_its_artists
    curator = Curator.new

    curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})

    assert_equal 1, curator.artists.first.id
  end

end
