# == Schema Information
#
# Table name: offer_page_items
#
#  id            :bigint           unsigned, not null, primary key
#  thumbnail     :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  course_id     :bigint           unsigned, not null
#  offer_page_id :bigint           unsigned, not null
#
class OfferPageItem < ActiveRecord::Base



end
