class AddAdditionalProductPropertyFields < ActiveRecord::Migration[5.0]
  def change
    create_table "spree_property_types", force: :cascade do |t|
      t.string   "name"
      t.string   "description"
      t.string   "presentation", null: false

      t.timestamps
      t.index ["name"], name: "index_spree_property_types_on_name", using: :btree
    end

    add_column "spree_properties", :property_type_id, :integer
  end
end
