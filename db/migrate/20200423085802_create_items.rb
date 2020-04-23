class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title,    null:false
      t.text :comment,    null:false
      t.string :image,    null:false
      t.timestamps
    end
  end
end
