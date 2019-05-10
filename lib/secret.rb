class SecretDiary
  attr_reader :entry, :entries, :locked, :unlocked

  def initialize
  	@entry = entry
  	@entries = []
    @locked = true
    @unlocked = false
  end

  def lock
    @locked
  end
  
  def add_entry(entry)
    @entry = entry
  end
  
  def get_entries
    raise "Diary is locked!" if lock
    @entries << @entry
  end
  
  def unlock
    @locked = false
  end
end
