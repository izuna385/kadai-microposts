class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :micropost, foreign_key: true
      t.references :like, foreign_key: true

      t.timestamps
    end
  end
end
