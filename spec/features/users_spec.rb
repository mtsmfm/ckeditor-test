require 'spec_helper'

feature 'users', js: true do
  1000.times do
    scenario 'test' do
      visit '/users/new'

      find('body').click
      find('body')
    end
  end
end
