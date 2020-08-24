class Subscriber < ApplicationRecord
	validates  :name, :email, :source, :number, presence: true
end
