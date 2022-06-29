# == Schema Information
#
# Table name: admin_users
#
#  id                :bigint           unsigned, not null, primary key
#  address           :string(255)
#  biography         :text(65535)
#  contact_no        :string(15)
#  email             :string(255)      not null
#  email_verified_at :datetime
#  name              :string(255)      not null
#  password          :string(255)      not null
#  photo             :string(255)
#  remember_token    :string(100)
#  website           :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  city_id           :integer
#  country_id        :integer
#
# Indexes
#
#  admin_users_email_unique  (email) UNIQUE
#
class AdminUser < ActiveRecord::Base



end
