require 'secret'

describe SecretDiary do
  
  it 'shows that the diary is locked' do
    expect(subject.lock).to eq(true)
  end

end
