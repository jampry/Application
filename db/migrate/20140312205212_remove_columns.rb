class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :medals, :code, :string
  end
end