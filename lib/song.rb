class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(title)
    song = Song.new
    song.name = title
    song
  end

  def self.create_by_name(title)
    song = self.create
    song.name = title
    song
  end

  def self.find_by_name(title)
    self.all.detect {|x| x.name == title}
  end

  def self.find_or_create_by_name(title)
    if self.find_by_name(title) == nil
      self.create_by_name(title)
    else
      return self.find_by_name(title)
    end
  end
end
