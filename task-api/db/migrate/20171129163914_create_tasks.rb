class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.boolean :complete
      t.integer :list_id

      t.timestamps
    end
  end
end
