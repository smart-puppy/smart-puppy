class AddFieldToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :business, :boolean
    add_column :users, :first_name, :string
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :age, :integer
    add_column :users, :phone_number, :string
    add_column :users, :biography, :text
    add_column :users, :pronouns, :string
    add_column :users, :industry, :string
    add_column :users, :job_position, :string
    add_column :users, :location, :string
    add_column :users, :education, :string
  end
end
