class Portfolio < ApplicationRecord
   validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

   def self.ror
      where(subtitle: "Ruby on Rails")
   end

   scope :pentest_portfolio_items, -> {where(subtitle: "Penetration Testting")}
   
   after_initialize :set_defaults

   def set_defaults
      self.main_image ||= "http://placehold.it/600x400"
      self.thumb_image ||= "http://placehold.it/350x200"
   end
end
