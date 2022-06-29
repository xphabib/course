# == Schema Information
#
# Table name: privacy_policies
#
#  id          :bigint           unsigned, not null, primary key
#  description :text(65535)      not null
#  serial      :integer          not null
#  status      :boolean          default(TRUE), not null
#  title       :string(255)      not null
#  created_at  :datetime
#  updated_at  :datetime
#
class PrivacyPolicy < ActiveRecord::Base



end
