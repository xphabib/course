# == Schema Information
#
# Table name: languages
#
#  id         :bigint           unsigned, not null, primary key
#  level      :string(255)      not null
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  user_id    :bigint           unsigned, not null
#
class Language < ActiveRecord::Base



end
