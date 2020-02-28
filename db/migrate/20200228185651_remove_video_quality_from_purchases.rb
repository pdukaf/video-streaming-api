class RemoveVideoQualityFromPurchases < ActiveRecord::Migration[6.0]
  def change
  	remove_column :purchases, :video_quality
  	add_column :purchases, :video_quality, :string
  end
end
