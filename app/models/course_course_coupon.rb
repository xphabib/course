# == Schema Information
#
# Table name: course_course_coupon
#
#  id               :bigint           unsigned, not null, primary key
#  course_coupon_id :bigint           unsigned, not null
#  course_id        :bigint           unsigned, not null
#
class CourseCourseCoupon < ActiveRecord::Base
    self.table_name = 'course_course_coupon'


end
