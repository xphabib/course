# == Schema Information
#
# Table name: course_subcategories
#
#  id                 :bigint           unsigned, not null, primary key
#  deleted_at         :datetime
#  name               :string(255)      not null
#  order_by           :integer          not null
#  status             :integer          not null
#  subcategory_url    :string(255)      not null
#  thumbnail          :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  course_category_id :bigint           unsigned, not null
#
# Indexes
#
#  course_subcategories_subcategory_url_unique  (subcategory_url) UNIQUE
#
class CourseSubcategory < ActiveRecord::Base



end
