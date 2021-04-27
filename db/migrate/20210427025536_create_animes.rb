class CreateAnimes < ActiveRecord::Migration[6.1]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :synopsis
      t.string :date
      t.string :episodes
      t.string :poster

      t.timestamps
    end
  end
end
