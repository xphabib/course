# == Schema Information
#
# Table name: basic_infos
#
#  id         :bigint           unsigned, not null, primary key
#  address    :string(255)      not null
#  email      :string(255)      not null
#  phoneNum1  :string(255)      not null
#  phoneNum2  :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#
class BasicInfo < ActiveRecord::Base



end
