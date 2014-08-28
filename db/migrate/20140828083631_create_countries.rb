class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :code
      t.string :name
      t.boolean :is_in_eu
      t.string :continent
      t.float :vat
      t.string :calling_code
      t.string :default_language
      t.string :currency
    end
  end
end
