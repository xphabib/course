# == Schema Information
#
# Table name: affiliator_course_urls
#
#  id         :bigint           unsigned, not null, primary key
#  course_url :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  course_id  :bigint           unsigned, not null
#  user_id    :bigint           unsigned, not null
#
# Indexes
#
#  affiliator_course_urls_course_url_unique  (course_url) UNIQUE
#
class AffiliatorCourseUrl < ActiveRecord::Base



end
