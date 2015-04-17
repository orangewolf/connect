class Need < ActiveRecord::Base
  has_many :donations
  has_many :users, :through => :donations
  belongs_to :organizations

  has_attached_file :image, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates :amount_requested, numericality: { greater_than: 0 }

  def percent_complete
    (self.amount_donated / self.amount_requested.to_f) * 100
  end

end
