class SecretDiary
  attr_reader :entry

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
  
  def get_entries
    @entries << @entry
  end

end
