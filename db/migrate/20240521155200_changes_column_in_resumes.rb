class ChangesColumnInResumes < ActiveRecord::Migration[7.1]
  def change
    change_column_null :applications, :resume_id, true
  end
end
