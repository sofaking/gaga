class CreateEventsGames < ActiveRecord::Migration
  def change
    create_table :events_games, id: false do |t|
      t.belongs_to :event, index: true, foreign_key: true
      t.belongs_to :game, index: true, foreign_key: true
    end
  end
end
