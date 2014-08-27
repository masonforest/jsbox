require 'rails_helper'

describe Script, type: :model do
  it 'has a default name set' do
    expect(Script.new.name.length).to eq(4)
  end
end

describe Script, '#execute' do
  it 'runs javascript' do
    script = create(:script, body: '1+1')

    expect(script.execute).to eq 2
  end
end
