class CreatePortfolio < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :name_company
      t.string :company_website
      t.text :description
    end
  end
end
