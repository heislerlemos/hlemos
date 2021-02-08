class AddIssueToSubscribers < ActiveRecord::Migration[6.0]
  def change
    add_column :subscribers, :issue, :text
  end
end
