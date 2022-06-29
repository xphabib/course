# == Schema Information
#
# Table name: password_resets
#
#  email      :string(255)      not null
#  token      :string(255)      not null
#  created_at :datetime
#
# Indexes
#
#  password_resets_email_index  (email)
#
class PasswordReset < ActiveRecord::Base



end
