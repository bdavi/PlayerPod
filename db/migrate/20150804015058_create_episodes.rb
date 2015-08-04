class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :link
      t.string :description
      t.datetime :pubDate
      t.string :duration
      t.string :audio_url
      t.string :guid

      t.references :feed, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
