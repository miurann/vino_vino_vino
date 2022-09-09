class AddColumnToWine < ActiveRecord::Migration[7.0]
  def change
    add_reference :wines, :region, foreign_key: true
  end
end
