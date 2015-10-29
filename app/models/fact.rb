class Fact < ActiveRecord::Base
  validates_presence_of :content
  validates :content, length: { maximum: 140 }
end
