class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content, null: false
      t.boolean :completed, default: false, null: false
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
