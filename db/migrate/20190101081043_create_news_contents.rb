class CreateNewsContents < ActiveRecord::Migration[5.0]
  def change
    create_table :news_contents do |t|
      t.string :overview
      t.string :text
      t.references :news, foreign_key: true

      t.timestamps
    end
  end
end
