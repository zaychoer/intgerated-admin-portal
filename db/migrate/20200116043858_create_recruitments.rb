class CreateRecruitments < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitments do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.text :address
    end
  end
end
