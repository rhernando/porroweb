class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lastseenable

  validates_presence_of :nombre, :apodo

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nombre, :apodo

  has_many :mensajes

  has_many :inscripciones
  has_many :porras, :through => :inscripciones

  #condiciones para las selecciones
  has_many :equipos, :through => :eleccion_equipos

end

# == Schema Information
#
# Table name: usuarios
#
#  id                     :integer(4)      not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer(4)      default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  nombre                 :string(255)
#  apellido               :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  apodo                  :string(255)
#  last_seen              :datetime
#

