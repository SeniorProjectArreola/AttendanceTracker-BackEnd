class Event < ActiveRecord::Base
	has_many :sub_events

	has_many :admins
	has_many :admin_users, :through => :admins, :source => :user

	has_many :clients
	has_many :client_users, :through => :clients, :source => :user
end
