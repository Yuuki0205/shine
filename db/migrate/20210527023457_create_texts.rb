class CreateTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :texts do |t|
      t.string :one, null: false
      t.string :two, null: false
      t.string :three, null: false
      t.string :four, null: false
      t.string :five, null: false
      t.string :six, null: false
      t.string :seven, null: false
      t.string :eight, null: false
      t.string :nine, null: false
      t.string :ten, null:false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end


