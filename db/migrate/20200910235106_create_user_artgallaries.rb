class CreateUserArtgallaries < ActiveRecord::Migration[6.0]
  def change
    create_table :user_artgallaries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :artgallary, null: false, foreign_key: true
      t.boolean :creator

      t.timestamps
    end
  end
end
