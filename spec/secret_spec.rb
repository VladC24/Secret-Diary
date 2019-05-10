require 'secret'

describe SecretDiary do
  
  describe '#lock' do
    it 'diary is locked' do
      expect(subject.lock).to eq(true)
    end
  end

  describe '#add_entry' do
    it 'add an entry in the diary' do
      expect(subject.add_entry(:entry)).to eq(:entry)
    end
  end

  
end
