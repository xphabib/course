# == Schema Information
#
# Table name: offer_pages
#
#  id            :bigint           unsigned, not null, primary key
#  code          :string(255)
#  course_count  :integer          default(0), not null
#  deleted_at    :datetime
#  fixed         :float(53)        default(0.0), not null
#  name          :string(255)      not null
#  percentage    :float(53)        default(0.0), not null
#  price_type    :integer          not null
#  status        :boolean          default(TRUE), not null
#  url           :string(255)      not null
#  usable_number :integer          default(0), not null
#  valid_from    :date             not null
#  valid_to      :date             not null
#  created_at    :datetime
#  updated_at    :datetime
#  admin_user_id :bigint           unsigned, not null
#
# Indexes
#
#  offer_pages_code_unique  (code) UNIQUE
#  offer_pages_url_unique   (url) UNIQUE
#
class OfferPage < ActiveRecord::Base



end
