class AddPostaddToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :postadd, :string
  end
end
