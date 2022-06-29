# == Schema Information
#
# Table name: course_sale_details
#
#  id                    :bigint           unsigned, not null, primary key
#  deleted_at            :datetime
#  discount_percentage   :float(53)        default(0.0), not null
#  instructor_income     :float(53)        default(0.0), not null
#  instructor_level      :integer          default(1), not null
#  instructor_percentage :float(53)        default(0.425), not null
#  instructory_income    :float(53)        default(0.0), not null
#  price                 :float(53)        default(0.0), not null
#  ssl_fee               :float(53)        default(0.0), not null
#  status                :boolean          default(TRUE), not null
#  created_at            :datetime
#  updated_at            :datetime
#  course_coupon_id      :bigint           unsigned
#  course_id             :bigint           unsigned, not null
#  course_sale_id        :bigint           unsigned, not null
#  currency_id           :bigint           unsigned, not null
#  user_id               :bigint           unsigned, not null
#
class CourseSaleDetail < ActiveRecord::Base



end
