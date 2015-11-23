class AddApprovedToUser < ActiveRecord::Migration
  def change
    add_column :users, :approved, :boolean, :default => false, :null => false
    add_index :users, :approved
  end

  def self.down
    delete_column :users, :approved
    delete_index :users, :approved
  end

end
