class AddColumnCategoryAndStockToProduct < ActiveRecord::Migration
  def change
    add_column :products, :category, :string

    add_column :products, :stock, :string
  end
end
