class CreateGradingAssignments < ActiveRecord::Migration[7.1]
  def change
    create_table :grading_assignments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
