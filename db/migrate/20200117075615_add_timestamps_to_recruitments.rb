class AddTimestampsToRecruitments < ActiveRecord::Migration[6.0]
  def change
    add_column :recruitments, :created_at, :datetime
    add_column :recruitments, :updated_at, :datetime
  end
end
