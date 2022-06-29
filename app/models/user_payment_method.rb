# == Schema Information
#
# Table name: user_payment_methods
#
#  id             :bigint           unsigned, not null, primary key
#  card_name      :string(255)      not null
#  card_number    :string(255)      not null
#  cvv            :string(255)      not null
#  expire_date    :string(255)      not null
#  payment_method :string(255)      not null
#  created_at     :datetime
#  updated_at     :datetime
#  user_id        :bigint           unsigned, not null
#
class UserPaymentMethod < ActiveRecord::Base



end
