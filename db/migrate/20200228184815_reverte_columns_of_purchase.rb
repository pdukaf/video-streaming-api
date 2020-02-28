class ReverteColumnsOfPurchase < ActiveRecord::Migration[6.0]
  def change
  	remove_column :purchases, :price
  	remove_column :purchases, :video_quality

  	add_column :purchases, :price, :decimal, precision: 3, scale: 2, default: 2.99
  	add_column :purchases, :video_quality, :string, array: true, default: ['HD', 'SD']
  end
end
