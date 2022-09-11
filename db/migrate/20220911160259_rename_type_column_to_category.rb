class RenameTypeColumnToCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column :wines, :type, :category
  end
end
