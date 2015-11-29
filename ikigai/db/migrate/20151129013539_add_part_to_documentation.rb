class AddPartToDocumentation < ActiveRecord::Migration
  def change
		add_column :documentations, :twentyone, :string
		add_column :documentations, :twentytwo, :string
		add_column :documentations, :twentythree, :string
		add_column :documentations, :twentyfour, :string
		add_column :documentations, :twentyfive, :string
		add_column :documentations, :twentysix, :string
		add_column :documentations, :twentyseven, :string
		add_column :documentations, :twentyeight, :string
		add_column :documentations, :twentynine, :string
		add_column :documentations, :thirty, :string
		add_column :documentations, :thirtyone, :string
		add_column :documentations, :thirtytwo, :string
  end
end
