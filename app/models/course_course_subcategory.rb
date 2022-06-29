# == Schema Information
#
# Table name: course_course_subcategory
#
#  id                    :bigint           unsigned, not null, primary key
#  course_id             :bigint           unsigned, not null
#  course_subcategory_id :bigint           unsigned, not null
#
class CourseCourseSubcategory < ActiveRecord::Base
    self.table_name = 'course_course_subcategory'


end
