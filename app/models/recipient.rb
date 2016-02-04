class Recipient < ActiveRecord::Base
  belongs_to :recipientable, polymorphic: true
  belongs_to :messages
end
