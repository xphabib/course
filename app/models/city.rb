# == Schema Information
#
# Table name: cities
#
#  id         :bigint           unsigned, not null, primary key
#  name       :string(255)      not null
#  country_id :bigint           unsigned, not null
#
class City < ActiveRecord::Base



end
