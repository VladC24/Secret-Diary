require 'secret_security'

describe SecretSecurity do

  describe '#lock' do
    it 'is locked' do
      expect(subject.lock).to eq(true)
    end
  end

  describe '#unlock' do 
    it 'unlocks the diary' do
      expect(subject.unlock).to eq(false)
    end
  end

end