class AddAudioTypeToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :audio_type, :string
  end
end
