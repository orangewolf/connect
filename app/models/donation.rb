class Donation < ActiveRecord::Base
  belongs_to :need
  belongs_to :user

  after_create :update_need_total

  def update_need_total
    self.need.amount_donated += self.amount
    self.need.save
  end
end
