class CreatePagesTexts < ActiveRecord::Migration
  def change
    create_table :pages_texts do |t|
      t.text :page_name
      t.text :page_text

      t.timestamps
    end
  end
end
