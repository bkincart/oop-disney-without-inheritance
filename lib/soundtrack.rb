class Soundtrack
  attr_reader :songs

  def initialize(name, songs)
    @name = name
    @songs = songs
  end

  def add_song(song)
    @songs << song
  end

  def print_soundtrack
    output = ""
    @songs.each do |song|
      output += "#{song.name}\n"
    end
    output
  end
end
