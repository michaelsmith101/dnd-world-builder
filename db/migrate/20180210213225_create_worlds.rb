class CreateWorlds < ActiveRecord::Migration
  def change
    create_table :worlds do |t|
      t.string :title
      t.text :description
      t.references :campaign, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
