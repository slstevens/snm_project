class AddProductIdToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :product, index: true
    add_foreign_key :comments, :products
  end
end
