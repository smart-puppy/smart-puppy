class CreateCoverLetters < ActiveRecord::Migration[7.1]
  def change
    create_table :cover_letters do |t|
      t.binary :file
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
