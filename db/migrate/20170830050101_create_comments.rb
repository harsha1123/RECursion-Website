class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :body
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
	  t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end