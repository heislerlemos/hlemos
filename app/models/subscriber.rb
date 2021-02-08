class Subscriber < ApplicationRecord
	validates  :name, :email, :source, :number, :subject, :issue,  presence: true
end
