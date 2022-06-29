# == Schema Information
#
# Table name: skills
#
#  id         :bigint           unsigned, not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  user_id    :bigint           unsigned, not null
#
class Skill < ActiveRecord::Base



end
