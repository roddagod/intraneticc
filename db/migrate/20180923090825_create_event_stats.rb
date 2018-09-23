class CreateEventStats < ActiveRecord::Migration[5.2]
  def change
    create_table :event_stats do |t|
      t.string :name
      t.date :event_date
      t.references :icc_event, foreign_key: true
      t.string :orateur
      t.string :moderateur
      t.string :conducteur
      t.integer :nb_nonstar_h
      t.integer :nb_nonstar_f
      t.integer :nb_star_h
      t.integer :nb_star_f
      t.integer :nb_enfants

      t.timestamps
    end
  end
end
