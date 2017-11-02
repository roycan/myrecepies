class ChangeColumnInRecipes < ActiveRecord::Migration[5.1]
  def change
    change_column :recipes, :description, :text

    # aside from change_column, I can also do 'rename_column'
    # pattern is   command :table, :column, :change
  end
end
