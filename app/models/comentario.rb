class Comentario < ApplicationRecord
  belongs_to :blog
    validates :comentariador, :corpo , presence: true
    has_rich_text :corpo
end
