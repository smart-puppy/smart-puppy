class CreateApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :applications do |t|
      t.string :status
      t.binary :cv_file
      t.binary :cover_letter
      t.references :user, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true
      t.references :resume, null: false, foreign_key: true
      t.references :cover_letter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
