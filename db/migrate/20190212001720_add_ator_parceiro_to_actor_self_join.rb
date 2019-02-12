class AddAtorParceiroToActorSelfJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.references :father, index: true
      t.timestamps
    end
  end
end
