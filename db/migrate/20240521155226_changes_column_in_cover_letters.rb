class ChangesColumnInCoverLetters < ActiveRecord::Migration[7.1]
  def change
    change_column_null :applications, :cover_letter_id, true
  end
end
