class RemoveTextFromNews < ActiveRecord::Migration[5.0]
  def change
    remove_column :news, :text, :string
  end
end
