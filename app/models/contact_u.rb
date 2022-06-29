# == Schema Information
#
# Table name: contact_us
#
#  id         :bigint           unsigned, not null, primary key
#  email      :string(255)      not null
#  message    :text(65535)      not null
#  name       :string(255)      not null
#  phone      :string(11)       not null
#  subject    :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#
class ContactU < ActiveRecord::Base



end
