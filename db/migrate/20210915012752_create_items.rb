class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      
      t.string     :item,              null: false
      t.text       :text,              null: false
      t.integer    :category_id,       null: false
      t.integer    :quality_id,        null: false
      t.integer    :price,             null: false
      t.integer    :delivery_free_id,  null: false
      t.integer    :prefecture_id,     null: false
      t.integer    :days_to_id,        null: false
      t.references :user,              foreign_key: true

      t.timestamps
    end
  end
end
