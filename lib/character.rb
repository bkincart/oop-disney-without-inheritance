class Character
  attr_reader :name, :actor

  def initialize(name, species, actor, type)
    @name = name
    @species = species
    @actor = actor
    @type = type
  end

  def summary
    "#{@name} (#{@species})"
  end

  def hero?
    @type == 'hero'
    # if @type == 'hero'
    #   return true
    # else
    #   return false
    # end
  end
end
