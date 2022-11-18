require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
require "selenium-webdriver"

RSpec.describe 'Hello world', type: :system do
  describe 'index page' do
    it 'shows the right content' do

      #visit blog_index_path
        visit '/blogs'

      expect(page).to have_content('Hello, world!')
    end
  end
end
