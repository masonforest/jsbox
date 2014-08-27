require 'spec_helper'

feature 'running a script' do
  scenario 'runs the script' do
    post '/say-hello', name: 'test'

    expect(response.body).to eq "Hello test"
  end
end
