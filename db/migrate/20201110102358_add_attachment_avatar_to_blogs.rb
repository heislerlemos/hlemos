
class AddAttachmentAvatarToBlogs < ActiveRecord::Migration[6.0]
=begin
  def self.up
    
      add_attachment :blogs,  :avatar
  
  end

  def self.down
    remove_attachment :blogs, :avatar
  end
=end
end


