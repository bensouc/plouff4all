class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :first_name, :string
    add_column :last_name, :string
    add_column :birth_date, :date
    add_column :bio, :text
    add_column :role, :string
    add_column :address, :string
    add_column :phone_number, :string
  end
end
