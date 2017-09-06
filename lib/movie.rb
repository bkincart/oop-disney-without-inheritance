class Movie
  attr_reader :watch_count, :characters

  def initialize(name, year, characters, soundtrack)
    @name = name
    @year = year
    @characters = characters
    @soundtrack = soundtrack
    @watch_count = 0
  end

  def watch!
    @watch_count += 1
  end

  def add_character(character)
    @characters << character
  end

  def heroes
    hero_string = ''
    @characters.each do |character|
      if character.hero_or_villain == 'hero'
        hero_string += "#{character.name}\n"
      end
    end
    hero_string
  end

  def villains
    villain_string = ''
    @characters.each do |character|
      if character.hero_or_villain == 'villain'
        villain_string += "#{character.name}\n"
      end
    end
    villain_string
  end

  def cast
    actor_string = ''
    @characters.each do |character|
      actor_string += "#{character.actor}\n"
    end
    actor_string
  end
end
