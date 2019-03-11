class AddAvatarToProfessionals < ActiveRecord::Migration[5.2]
  def change
    add_column :professionals, :avatar, :string
  end
end
