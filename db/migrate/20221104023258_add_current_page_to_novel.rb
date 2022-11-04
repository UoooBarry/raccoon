class AddCurrentPageToNovel < ActiveRecord::Migration[7.0]
  def change
    add_column :novels, :current_page, :integer, default: 0
  end
end
