# == Schema Information
#
# Table name: ar_internal_metadata
#
#  key        :string(255)      not null, primary key
#  value      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ArInternalMetadatum < ActiveRecord::Base

    self.primary_key = :key

end
