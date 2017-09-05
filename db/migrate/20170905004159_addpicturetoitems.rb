class Addpicturetoitems < ActiveRecord::Migration[5.1]
  def change
    change_table :items do |t|
      t.string :picture

    end
  end
end
