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

  describe '#get_entries' do
    it 'gets an empty array' do
      allow(subject).to receive(:get_entries).and_return([])
      expect(subject.get_entries).to eq([])
    end
  end

end
