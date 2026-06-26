class Ahoy::Visit < ApplicationRecord
  self.table_name = "ahoy_visits"
  puts "ola"
  has_many :events, class_name: "Ahoy::Event"
  belongs_to :user, optional: true
end
