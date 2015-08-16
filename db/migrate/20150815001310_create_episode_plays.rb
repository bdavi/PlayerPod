class CreateEpisodePlays < ActiveRecord::Migration
  def change
    create_table :episode_plays do |t|
      t.references :user, index: true, foreign_key: true
      t.references :episode, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
