class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.date :posted
      t.boolean :anonymous
      t.belongs_to :user, foreign_key: true
      t.belongs_to :course, foreign_key: true
      t.belongs_to :session, foreign_key: true

      t.timestamps
    end
  end
end
