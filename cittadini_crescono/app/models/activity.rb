class Activity < ActiveRecord::Base
  validates :title, :description, :category, presence: true
  validates :title, uniqueness:true
end
