class User < ActiveRecord::Base
	has_many :attendances

	has_many :admins
	has_many :admin_events, :through => :admins, :source => :event
	has_many :clients
	has_many :client_events, :through => :clients, :source => :event

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
