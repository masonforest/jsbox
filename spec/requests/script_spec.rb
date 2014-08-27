require 'spec_helper'

describe "ScriptsController", type: :request do
  it 'runs the script' do
    script = Script.create(
      name: 'say-hello',
      body: '"Hello "+ params.name'
    )

    post '/say-hello', name: 'ralph', action: :create

    expect(response.body).to eq "Hello ralph"
  end
end
