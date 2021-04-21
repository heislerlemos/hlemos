class Subscriber < ApplicationRecord
  validates  :name, :email, :source, :number, :subject, :issue,  presence: true

        def self.search(search)
where("name || id  LIKE ?", "%#{search}%")
end
end
