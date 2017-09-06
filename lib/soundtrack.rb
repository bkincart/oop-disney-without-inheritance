class Soundtrack
  attr_reader :songs

  def initialize(name, songs)
    @name = name
    @songs = songs
  end

  def add_song(song)
    @songs.push(song)
    # @songs << song
  end

  def print_soundtrack
    soundtrack = ''
    @songs.each do |song|
      soundtrack += "#{song.name}\n"
    end
    soundtrack
  end
end
