class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title,              null: false, default: ""
      t.string :catch_copy,         null: false, default: ""
      t.string :concept,            null: false, default: ""
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
