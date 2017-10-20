class RenamePasswordHash < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :users, :password_hash, :password_digest
  end

  def self.down
  end
end
