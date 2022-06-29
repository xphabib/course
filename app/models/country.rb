# == Schema Information
#
# Table name: countries
#
#  id       :bigint           unsigned, not null, primary key
#  code     :string(255)      not null
#  dialing  :string(255)      not null
#  flag_img :string(255)      not null
#  iso3     :string(255)      not null
#  name     :string(255)      not null
#
class Country < ActiveRecord::Base



end
