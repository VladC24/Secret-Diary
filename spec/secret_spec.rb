require 'secret'
require 'secret_security'

describe SecretDiary do

  describe '#add_entry' do
    it 'raises an error if the diary is locked' do
      expect{ subject.add_entry(:entry) }.to raise_error("Can't add an entry. Diary is locked!")
    end
    it 'adds an entry in the diary' do
      allow(subject).to receive(:add_entry).and_return(:entry)
      expect(subject.add_entry(:entry)).to eq(:entry)
    end
  end

  describe '#get_entries' do
    it 'gets an empty array' do
      allow(subject).to receive(:get_entries).and_return([])
      expect(subject.get_entries).to eq([])
    end
    it 'raises and error if diary is locked' do
      expect{ subject.get_entries }.to raise_error("Can't see the log. Diary is locked!")
    end
  end

  describe '#locked?' do
    it 'shows if diary is unlocked' do
      allow(subject).to receive(:locked?).and_return(false)
      expect(subject.locked?).to eq(false)
    end

    it 'shows if diary is locked' do
      allow(subject).to receive(:locked?).and_return(true)
      expect(subject.locked?).to eq(true)
    end
  end

end
