class Comentario < ApplicationRecord
  belongs_to :blog
    validates :comentariador, :corpo , presence: true
end
