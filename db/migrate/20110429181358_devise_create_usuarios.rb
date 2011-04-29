class DeviseCreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table(:usuarios) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.confirmable

      # t.encryptable

      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable

      t.string :nombre
      t.string :apellido

      t.timestamps
    end

    add_index :usuarios, :email,                :unique => true
    add_index :usuarios, :reset_password_token, :unique => true
    # add_index :usuarios, :confirmation_token,   :unique => true
    # add_index :usuarios, :unlock_token,         :unique => true
    # add_index :usuarios, :authentication_token, :unique => true
  end

  def self.down
    drop_table :usuarios
  end
end
