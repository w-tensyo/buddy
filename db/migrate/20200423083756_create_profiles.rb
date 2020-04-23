class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :profile,        null: true, default: "自己紹介はまだ書かれていません。"
      t.string :image,          null: true
      t.string :link,           null: true
      t.string :age,            null: true, default: "未設定"
      t.string :gender,         null: true, default: "未設定"
      t.references :user,       null: false,foreign_key: true
      t.timestamps
    end
  end
end
