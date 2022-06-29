# == Schema Information
#
# Table name: currencies
#
#  id           :bigint           unsigned, not null, primary key
#  decimal_name :string(35)       not null
#  iso          :string(3)        not null
#  name         :string(255)      not null
#  status       :integer          not null
#  symbol       :string(25)       not null
#  title        :string(255)      not null
#
class Currency < ActiveRecord::Base



end
