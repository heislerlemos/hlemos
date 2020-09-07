class Blog < ApplicationRecord
	has_many :comentarios, dependent: :destroy
	  validates :titulo, presence: true,
                    length: { minimum: 5 }
end
