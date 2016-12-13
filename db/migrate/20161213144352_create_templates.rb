class CreateTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :templates do |t|
      t.column :body, :text
      t.column :path, :string
      t.column :locale, :string
      t.column :handler, :string, :default => 'erb'
      t.column :partial, :boolean, :default => false
      t.column :format, :string, :default => 'html'
      t.timestamps
    end
  end
end
