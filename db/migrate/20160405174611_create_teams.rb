class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|

      t.string :name
      t.string :team
      t.boolean :zero, default: false
      t.boolean :one, default: false
      t.boolean :two, default: false
      t.boolean :three, default: false
      t.boolean :four, default: false
      t.boolean :five, default: false
      t.boolean :six, default: false
      t.boolean :seven, default: false
      t.boolean :eight, default: false
      t.boolean :nine, default: false
      t.boolean :ten, default: false
      t.boolean :eleven, default: false
      t.boolean :twelve, default: false

      t.timestamps null: false
    end
  end
end
