class AddPhoneNumberToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_numer, :string
    add_column :users, :full_name, :string
    add_column :users, :role, :string
  end
end
