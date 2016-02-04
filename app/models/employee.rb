class Employee < ActiveRecord::Base
  has_many :recipients, as: :recipientable
end
