class Pokemon

  attr_accessor :id, :name, :type, :db, :hp

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(pokemon_id, db)
    pokemon_array = db.execute("SELECT * FROM pokemon WHERE id = ?", pokemon_id).flatten
    # binding.pry
    Pokemon.new(id: pokemon_array[0], name: pokemon_array[1], type: pokemon_array[2], db: db)
  end

  def alter_hp(hp, db)
  binding.pry
  end


end
