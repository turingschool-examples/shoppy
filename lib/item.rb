class Item
  def self.all
    @all ||= []
  end

  def self.create(title)
    all << title
  end
end
