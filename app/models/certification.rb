# == Schema Information
#
# Table name: certifications
#
#  id           :bigint           unsigned, not null, primary key
#  institution  :string(255)      not null
#  passing_year :integer
#  subject      :string(255)      not null
#  created_at   :datetime
#  updated_at   :datetime
#  user_id      :bigint           unsigned, not null
#
class Certification < ActiveRecord::Base



end
