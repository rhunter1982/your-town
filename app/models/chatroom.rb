class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :project, dependent: :destroy
end
