# coding: utf-8
# required librarys 
require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
require "selenium-webdriver"

RSpec.describe 'Testing all acess from cai page', type: :system do


  describe 'accessing facebook cai account ' do 
    it 'should be able to access the view page and drop the down banner to facebook link' do 
        visit '/'     
        page.execute_script('window.scrollTo(0, document.body.scrollHeight)')  
        find('#flip',  wait: 5).click    
        find('#facebook img').click
        find('#flip2',  wait: 5).click    
    expect(page).to have_current_path("https://www.facebook.com/cai.co.ao")      
    end
  end


describe 'will fill the form on the subscribers' do 
        it 'should fill all the form ' do 
          visit '/subscribers'
          fill_in 'subscriber[name]', with: "Heisler Jorge De Lemos Stlano"
          fill_in 'subscriber[number]', with: "934659342"
          fill_in 'subscriber[email]', with: "heisler.lemos@mail.com"
          fill_in 'subscriber[subject]', with: "testing systems "
          find('trix-editor').click.set('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.')
          select "Redes", :from => "subscriber[source]"
          click_button 'commit'

        end 
end 

  describe 'test to check if will show up the message ' do
    it ' it should appear sever name ip ' do
      visit '/blogs'
      visit '/suportes'
      page.execute_script('window.scrollTo(0, document.body.scrollHeight)')
      # this adds the  new dns name 
      fill_in 'hostname', with: 'facebook.com'
      click_button 'commit'
      # this adds the  new dns name 
            page.execute_script('window.scrollTo(0, document.body.scrollHeight)')

      fill_in 'hostname', with: 'google '
      click_button 'commit'         
       #expect(find('.hero-body .title')).to have_content("Can't find host  Certifique que o host encontra-se disponivel !")
       # what supost to happen for the test pass need's to have the text in cause
      expect(page).to have_css(".title", text: "Can't find host | Certifique que o host encontra-se disponivel !")

    end
  end


  describe 'access administration panel', js: true do    
    it "tries to access the panel administration with the tickets"  , driver: :apparition do  
          visit "http://cai:cai2021luanda@0.0.0.0:3000/subscribers/show"
          click_button "commit"
          visit "/welcomes/index"
          expect(page).to have_css(".slogan", text:  "Cai\nna nossa\ninovação")
    end    
  end

end
