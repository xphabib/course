# == Schema Information
#
# Table name: course_coupons
#
#  id            :bigint           unsigned, not null, primary key
#  code          :string(255)      not null
#  coupon_used   :integer          default(0), not null
#  percentage    :float(53)        default(0.0), not null
#  status        :boolean          default(FALSE), not null
#  usable_number :integer
#  valid_from    :date             not null
#  valid_to      :date             not null
#  created_at    :datetime
#  updated_at    :datetime
#  offer_page_id :bigint           unsigned
#  user_id       :bigint           unsigned, not null
#
# Indexes
#
#  course_coupons_code_unique  (code) UNIQUE
#
class CourseCoupon < ActiveRecord::Base



end
