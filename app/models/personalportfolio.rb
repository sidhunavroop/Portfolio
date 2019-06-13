class Personalportfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  
  validates_presence_of :title, :body
  mount_uploader :thumb_image, PersonalportfolioUploader
  mount_uploader :main_image, PersonalportfolioUploader
  # after_initialize :set_defaults

  def self.by_position
    order("position ASC")
  end

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }

end