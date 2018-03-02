class AddPostHourRequestToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :ocertime_request, :decimal, default: 0.0
  end
end
