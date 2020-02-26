class CreateLeagues < ActiveRecord::Migration[6.0]
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :max_teams
      t.integer :seed_order, array: true, default: []
      t.datetime :draft_start
      t.integer :round_duration
      t.integer :roster_guards
      t.integer :roster_forwards
      t.integer :roster_centers
      t.integer :roster_utility
      t.integer :roster_bench
      
      
      t.references :user, null: false, foreign_key: true 


      t.timestamps
    end
  end
end
