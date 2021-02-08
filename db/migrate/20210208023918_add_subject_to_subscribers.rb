class AddSubjectToSubscribers < ActiveRecord::Migration[6.0]
  def change
    add_column :subscribers, :subject, :string
  end
end
