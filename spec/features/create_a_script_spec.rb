require 'spec_helper'

feature 'creating a script' do
  scenario 'creates a script' do
    visit new_script_path
    fill_in 'Body', with: '"Hello " + params.name'

    click_button 'Create Script'
  end
end
