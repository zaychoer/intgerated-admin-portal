class AddTimestampsToPortfolio < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :created_at, :datetime
    add_column :portfolios, :updated_at, :datetime
  end
end
