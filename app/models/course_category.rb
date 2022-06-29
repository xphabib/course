# == Schema Information
#
# Table name: course_categories
#
#  id           :bigint           unsigned, not null, primary key
#  category_url :string(255)      not null
#  deleted_at   :datetime
#  name         :string(255)      not null
#  order_by     :integer          not null
#  serial       :bigint           default(1), unsigned, not null
#  status       :integer          not null
#  thumbnail    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  course_categories_category_url_unique  (category_url) UNIQUE
#  course_categories_name_unique          (name) UNIQUE
#
class CourseCategory < ActiveRecord::Base
  has_many :courses
end
