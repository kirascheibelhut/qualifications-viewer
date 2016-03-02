class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :colour
      t.references :qualification

      t.timestamps null: false
    end
  end
end
