class SecretDiary
  attr_reader :entry, :entries

  def initialize
  	@entry = entry
  	@entries = []
  end
  def lock
    locked = true
  end
  
  def add_entry(entry)
    @entry = entry
  end
  
end
