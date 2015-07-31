class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :feed_url
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
