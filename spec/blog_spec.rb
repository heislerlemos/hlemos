# coding: utf-8
require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
require "selenium-webdriver"

RSpec.describe 'Hello world', type: :system do

  describe 'testing  dns ' do
    it ' it should appear sever name ip ' do

      #visit blog_index_path
      visit '/blogs'
      visit '/suportes'


      fill_in 'hostname', with: 'facebook.com'
      
      click_button 'commit'


      

      fill_in 'hostname', with: 'google    '
      
       click_button 'commit'
         
       #expect(find('.hero-body .title')).to have_content("Can't find host  Certifique que o host encontra-se disponivel !")
        expect(page).to have_css(".title", text: "heisler")

    end

  end
end
