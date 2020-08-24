class AddNumberToSubscribers < ActiveRecord::Migration[6.0]
  def change
    add_column :subscribers, :number, :integer
  end
end
