# == Schema Information
#
# Table name: academic_details
#
#  id           :bigint           unsigned, not null, primary key
#  degree_title :string(255)      not null
#  institution  :string(255)      not null
#  session_end  :integer          not null
#  subject      :string(255)
#  website_url  :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  country_id   :bigint           unsigned, not null
#  user_id      :bigint           unsigned, not null
#
class AcademicDetail < ActiveRecord::Base



end
