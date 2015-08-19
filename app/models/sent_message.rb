class SentMessage < ActiveRecord::Base
  belongs_to :user
  belongs_to :message

  validates :user, presence: true
end
