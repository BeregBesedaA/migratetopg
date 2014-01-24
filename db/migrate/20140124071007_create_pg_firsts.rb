class CreatePgFirsts < ActiveRecord::Migration
  def change
    create_table :pg_firsts do |t|
      t.string :name

      t.timestamps
    end
  end
end
