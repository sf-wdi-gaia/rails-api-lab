class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.boolean :answer_hidden

      t.timestamps null: false
    end
  end
end
