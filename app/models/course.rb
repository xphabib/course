# == Schema Information
#
# Table name: courses
#
#  id                 :bigint           unsigned, not null, primary key
#  approval           :integer          default(0), not null
#  avg_rating         :float(53)        default(0.0), not null
#  course_model       :integer          not null
#  course_url         :string(255)      not null
#  deleted_at         :datetime
#  description        :text(65535)      not null
#  difficulty_level   :integer          not null
#  duration           :integer
#  features           :text(65535)      not null
#  master_price       :float(53)        default(0.0), not null
#  master_thumb       :string(255)
#  price              :float(53)        default(0.0), not null
#  privacy            :integer          not null
#  share_count        :bigint           default(0), unsigned, not null
#  thumbnail          :string(255)      not null
#  title              :string(255)      not null
#  total_enrollments  :bigint           default(0), unsigned, not null
#  view_count         :bigint           default(0), unsigned, not null
#  created_at         :datetime
#  updated_at         :datetime
#  course_category_id :bigint           unsigned, not null
#  currency_id        :bigint           unsigned, not null
#  language_locale_id :bigint           unsigned, not null
#  user_id            :bigint           unsigned, not null
#
# Indexes
#
#  courses_course_url_unique  (course_url) UNIQUE
#
class Course < ActiveRecord::Base
  has_many :course_sections
  has_many :course_lessons
  belongs_to :course_category
end
