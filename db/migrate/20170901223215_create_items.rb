class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :desc
      t.belongs_to :shop, foreign_key: true

      t.timestamps
    end
  end
end
