class Portfolio < ApplicationRecord
   validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

   def self.ror
      where(subtitle: "Ruby on Rails")
   end

   scope :pentest_portfolio_items, -> {where(subtitle: "Penetration Testting")}
end
