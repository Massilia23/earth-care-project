class Chatroom < ApplicationRecord
  belongs_to :mission
  has_many :messages
  has_many :users
end
