class CreateIccEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :icc_events do |t|
      t.string :name

      t.timestamps
    end
  end
end
