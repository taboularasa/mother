# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  sku        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Food < ActiveRecord::Base
  has_many :items

  validates :name, uniqueness: true, presence: true
  validates :sku, uniqueness: true, presence: true
end
