# == Schema Information
#
# Table name: failed_jobs
#
#  id         :bigint           unsigned, not null, primary key
#  connection :text(65535)      not null
#  exception  :text(4294967295) not null
#  failed_at  :datetime         not null
#  payload    :text(4294967295) not null
#  queue      :text(65535)      not null
#  uuid       :string(255)      not null
#
# Indexes
#
#  failed_jobs_uuid_unique  (uuid) UNIQUE
#
class FailedJob < ActiveRecord::Base



end
