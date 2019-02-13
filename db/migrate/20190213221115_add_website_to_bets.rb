class AddWebsiteToBets < ActiveRecord::Migration[5.2]

  def change
    add_column :bets, :website_id, :integer
  end

end
