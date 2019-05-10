require_relative 'secret_security'

class SecretDiary
attr_reader :entry, :entries

  def initialize(security_class = SecretSecurity)
    @security = security_class.new    
  	@entry = entry
  	@entries = []
  end

  def add_entry(entry)
    raise "Can't add an entry. Diary is locked!" if locked?
    @entry = entry
  end
  
  def get_entries
    raise "Can't see the log. Diary is locked!" if locked?
    @entries << @entry
  end
  
  def locked?
    @security.locked?
  end

  def unlocked?
    !@security.locked?
  end
  
  def lock
    @security.lock
  end

  def unlock
    @security.unlock
  end

end
